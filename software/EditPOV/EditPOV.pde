import controlP5.*;
import java.util.Map;

// Colors.
static final int COLOR_BACKGROUND    = #444444;
static final int COLOR_EDITOR_ON     = #dd0000;
static final int COLOR_EDITOR_OFF    = #333333;
static final int COLOR_EDITOR_STROKE = #111111;
final int COLOR_EDITOR_TOOL   = color(255, 0, 0, 128);
final int COLOR_EDITOR_TEXT_CURSOR = color(255, 0, 0, 64);

// Editor size.
static final int N_COLUMNS = 200;
static final int N_ROWS    = 12;
static final int FONT_SIZE = N_ROWS;

// Window size.
static final int WINDOW_WIDTH  = 1024;
static final int WINDOW_HEIGHT = 400;

//static final int EDITOR_BORDER = 20;
static final int EDITOR_WIDTH   = 1000;
static final int EDITOR_HEIGHT  = EDITOR_WIDTH*N_ROWS/N_COLUMNS;
static final int EDITOR_PADDING = 10;
static final int CONTROL_TOP    = 2*EDITOR_PADDING+EDITOR_HEIGHT;

static final int BUTTON_SIZE    = 40;

static final int TOOL_PEN  = 1;
static final int TOOL_TEXT = 2;
static final int TOOL_MOVE = 3;


ClipHelper clipboard = new ClipHelper();

Pixmap pixmap = new Pixmap(N_COLUMNS, N_ROWS);

PixmapEditor editor;
PixmapTool tool;

PenTool  penTool;
TextTool textTool;
MoveTool moveTool;

ControlP5 cp5;
RadioButton toolButtons;
DropdownList fontDropdownList;

FileManager fileManager;
 int saveRequested = 0;
 int openRequested = 0;
  
  
HashMap<String,TextPixmapFactory> fonts;
ArrayList<String> fontNames;

WheelDisplay wheelDisplay;


void setup() {
  // Initialize sketch.
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
  frameRate(20);
  
  // Editor.
  editor = new PixmapEditor((width-EDITOR_WIDTH)/2, EDITOR_PADDING, EDITOR_WIDTH, EDITOR_HEIGHT, pixmap);

  // Fonts.
  fonts = new HashMap<String,TextPixmapFactory>();
  fontNames = new ArrayList<String>();
  addBitmap("Keeling", "font_alex_keeling.csv", false);
  addFont("Verdana",         createFont("Verdana", FONT_SIZE),       -2);
  addFont("Arial",           createFont("Arial", FONT_SIZE),         -2);
  addFont("Arapix",          loadFont("29LTArapix-12.vlw"),          +2);
  addFont("AlphaBeta",       createFont("AlphaBetaBRK", FONT_SIZE),  -2);
  addFont("Fifteen Narrow",  createFont("FifteenNarrow", FONT_SIZE), -2);
  addFont("Comic Sans",      loadFont("ComicSansMS-12.vlw"),         +2);
  addFont("Comic Sans Bold", loadFont("ComicSansMS-Bold-12.vlw"),    +2);

  // Create tools.
  penTool  = new PenTool(editor);
  TextPixmapFactory baseFont = fonts.get(fontNames.get(0));
  textTool = new TextTool(editor, baseFont);
  moveTool = new MoveTool(editor);

  // File Manager.
  fileManager = new FileManager();


  // Controllers.
  cp5 =  new ControlP5(this);
  
  int controlX = EDITOR_PADDING;
  int controlY = CONTROL_TOP;
  
  // Tools.
  toolButtons = cp5.addRadioButton("chooseTool")
                   .setPosition(controlX, controlY)
                   .setSize(BUTTON_SIZE, BUTTON_SIZE)
                   .setColorForeground(color(120))
                   .setColorActive(color(255))
                   .setColorLabel(color(255))
                   .setItemsPerRow(2)
                   .setSpacingColumn(BUTTON_SIZE)
                   .setSpacingRow(BUTTON_SIZE)
                   .addItem("text", TOOL_TEXT)
                   .addItem("pen",  TOOL_PEN)
                   .addItem("move", TOOL_MOVE)
                   ;
  
  // Toggle for LTR/RTL.
  cp5.addToggle("toggleLTR")
     .setPosition(controlX += 5*BUTTON_SIZE, controlY)
     .setSize(BUTTON_SIZE, BUTTON_SIZE/2)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     .setLabel("LTR   |   RTL")
     ;
  
  // Drop-down list for fonts.
  fontDropdownList = cp5.addDropdownList("chooseFont")
                        .setPosition(controlX, controlY += 2*BUTTON_SIZE)
                        .setItemHeight(BUTTON_SIZE/2)
                        .setBarHeight(BUTTON_SIZE/2)
                        ;
  fontDropdownList.captionLabel().style().marginTop    = 5;
  fontDropdownList.captionLabel().style().marginBottom = 5;
  for (int i=0; i<fontNames.size(); i++) {
    fontDropdownList.addItem(fontNames.get(i), i);
  }
  
  
  
  // Effects.
  cp5.addBang("erase")
     .setPosition(controlX += 4*BUTTON_SIZE, controlY = CONTROL_TOP)
     .setSize(BUTTON_SIZE, BUTTON_SIZE);

  cp5.addBang("invert")
     .setPosition(controlX += 2*BUTTON_SIZE, controlY)
     .setSize(BUTTON_SIZE, BUTTON_SIZE);
     
 
     


  // Add export buttons.
  cp5.addButton("exportToArduino")
     .setPosition(width - EDITOR_PADDING - BUTTON_SIZE*4, CONTROL_TOP)
     .setSize(BUTTON_SIZE*4, BUTTON_SIZE/2)
     .setLabel("Copy to Clipboard for Arduino");
  
  cp5.addButton("exportToPureData")
     .setPosition(width - EDITOR_PADDING - BUTTON_SIZE*4, CONTROL_TOP + BUTTON_SIZE/2 + 2)
     .setSize(BUTTON_SIZE*4, BUTTON_SIZE/2)
     .setLabel("Copy to Clipboard for Dataflow");
     
   // Save & Load
   cp5.addButton("save")
     .setPosition(width - EDITOR_PADDING - BUTTON_SIZE*4, CONTROL_TOP + BUTTON_SIZE + 4)
     .setSize(BUTTON_SIZE*4, BUTTON_SIZE/2);  
   
    cp5.addButton("open")
     .setPosition(width - EDITOR_PADDING - BUTTON_SIZE*4, CONTROL_TOP + BUTTON_SIZE + 6 + BUTTON_SIZE/2)
     .setSize(BUTTON_SIZE*4, BUTTON_SIZE/2);  
     
  // Console.
  Textarea console = cp5.addTextarea("txt")
                        .setPosition(EDITOR_PADDING, height -EDITOR_PADDING-BUTTON_SIZE)
                        .setSize(width-2*EDITOR_PADDING, BUTTON_SIZE)
                        .setFont(createFont("", 10))
                        .setColor(color(200))
                        .setColorBackground(color(0, 100))
                        .setColorForeground(color(255, 100));
  ;
  cp5.addConsole(console);

  // Assign default tool.
  toolButtons.activate(0);
  fontDropdownList.setIndex(0);
  tool = textTool;
  
  
  wheelDisplay = new WheelDisplay();
}

void draw() {
  background(COLOR_BACKGROUND);
  editor.display();
  tool.display();
  
  
  // 2 FRAME WAIT BEFORE OPENING A DIALOG, OTHERWISE I GET SOME BUGS
  if ( saveRequested > 0 ) {
    saveRequested--;
    if (saveRequested==0) selectOutput("Select a file to save to:", "fileSelectedForSave");
    
  }
  
  if ( openRequested > 0 ) {
    openRequested--;
    if (openRequested==0) selectInput("Select a file to open:", "fileSelectedForOpen");
    
  }
  
  
  wheelDisplay.draw(pixmap,650,210,100, 125);
  

}

void chooseTool(int id) {
  switch (id) {
    case TOOL_PEN:  tool = penTool; break;
    case TOOL_TEXT: tool = textTool; break;
    case TOOL_MOVE: tool = moveTool; break;
  }
  tool.reset();
}

void toggleLTR(boolean ltr) {
  textTool.setLTR(ltr);
}

void erase() {
  pixmap.clear();
}

void invert() {
  for (int i=0; i<pixmap.nPixels(); i++)
    pixmap.toggle(i);
}

void save() {
   saveRequested = 2;
   
   
}

void fileSelectedForSave(File selection) {
  if (selection != null) {
    //println("User selected " + selection.getAbsolutePath());
    fileManager.save(selection.getAbsolutePath(),pixmap);
  }
}

void open() {
  openRequested = 2;
  
}

void fileSelectedForOpen(File selection) {
  if (selection != null) {
    fileManager.open(selection.getAbsolutePath(),pixmap);
  }
}


void exportToArduino() {
  String code = "#define POVARRAYSIZE "+N_COLUMNS+"\rint povArray[] = { "; 
  for ( int c =0 ; c <  N_COLUMNS ; c++ ) {
    int compressedRow = 0;
    for ( int r =0 ; r < N_ROWS ; r++) {
      compressedRow = compressedRow << 1;
      compressedRow = compressedRow | (pixmap.get(c, r) == Pixmap.OFF ? Pixmap.OFF : Pixmap.ON);
    }
    code = code + compressedRow ;
    if ( c != N_COLUMNS - 1 ) code = code + " , ";
  }
  code = code + "};\r";
  clipboard.copyString(code);
  println("Arduino code copied to clipboard.");
}

void exportToPureData() {
  String code = ""; 
  for ( int c =0 ; c <  N_COLUMNS ; c++ ) {
    int compressedRow = 0;
    for ( int r =0 ; r < N_ROWS ; r++) {
      compressedRow = compressedRow << 1;
      compressedRow = compressedRow | (pixmap.get(c, r) == Pixmap.OFF ? Pixmap.OFF : Pixmap.ON);
    }
    code = code + compressedRow ;
    if ( c != N_COLUMNS - 1 ) code = code + " ";
  }
  clipboard.copyString(code);
  println("Dataflow code copied to clipboard.");
}

void controlEvent(ControlEvent event) {
  if (event.isGroup()) {
    if (event.getGroup() == fontDropdownList) {
      TextPixmapFactory factory = fonts.get( fontNames.get( (int) event.getGroup().getValue() ) );
      textTool.setTextFactory( factory );
    }
  }
}

void mousePressed() {
  tool.mousePressed();
}

void mouseDragged() {
  tool.mouseDragged();
}

void mouseMoved() {
  tool.mouseMoved();
}

void mouseReleased() {
  tool.mouseReleased();
}

void keyTyped() {
  tool.keyTyped();
}

void mouseWheel(MouseEvent event) {
  tool.mouseWheel(event.getAmount());
}

void keyPressed() {
  tool.keyPressed();
  if ( keyCode == DELETE ) {
    for (int i =0; i < pixmap.nPixels(); i++) {
      pixmap.set(i, Pixmap.OFF);
    }
  } 
}

void keyReleased() {
  tool.keyReleased();
}

void addFont(String name, PFont font, int offset) {
  fonts.put(name, new PFontTextPixmapFactory(font, offset, FONT_SIZE));
  fontNames.add(name);
}

void addBitmap(String name, String fileName, boolean imageFile) {
  fonts.put(name, new BitmapTextPixmapFactory(fileName, imageFile));
  fontNames.add(name);  
}

