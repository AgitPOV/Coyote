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
static final int EDITOR_PADDING = 50;
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

HashMap<String,TextPixmapFactory> fonts;
ArrayList<String> fontNames;

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
     .setPosition(width - EDITOR_PADDING - BUTTON_SIZE*3, CONTROL_TOP)
     .setLabel("-> Arduino");
  
  cp5.addButton("exportToPureData")
     .setPosition(width - EDITOR_PADDING - BUTTON_SIZE*3, CONTROL_TOP + BUTTON_SIZE)
     .setLabel("-> PureData");
     
     
  // Console.
  Textarea console = cp5.addTextarea("txt")
                        .setPosition(width/2 - EDITOR_PADDING, height - 2*BUTTON_SIZE - EDITOR_PADDING)
                        .setSize(width/2, 2*BUTTON_SIZE)
                        .setFont(createFont("", 10))
                        .setLineHeight(14)
                        .setColor(color(200))
                        .setColorBackground(color(0, 100))
                        .setColorForeground(color(255, 100));
  ;
  cp5.addConsole(console);

  // Assign default tool.
  toolButtons.activate(0);
  fontDropdownList.setIndex(0);
  tool = textTool;
}

void draw() {
  background(COLOR_BACKGROUND);
  editor.display();
  tool.display();
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
  println("PureData code copied to clipboard.");
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

// //////////////////
// Clipboard class for Processing
// by seltar, modified by adamohern
// v 0115AO
// only works with programs. applets require signing

import java.awt.datatransfer.*;
import java.awt.Toolkit;

// Press Any Key to Copy
/*
ClipHelper cp = new ClipHelper();
 void keyPressed() { cp.copyString(""+(int)random(255)); }
 */

// CLIPHELPER OBJECT CLASS:

class ClipHelper {
  Clipboard clipboard;

  ClipHelper() {
    getClipboard();
  }

  void getClipboard () {
    // this is our simple thread that grabs the clipboard
    Thread clipThread = new Thread() {
      public void run() {
        clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
      }
    };

    // start the thread as a daemon thread and wait for it to die
    if (clipboard == null) {
      try {
        clipThread.setDaemon(true);
        clipThread.start();
        clipThread.join();
      }
      catch (Exception e) {
      }
    }
  }

  void copyString (String data) {
    copyTransferableObject(new StringSelection(data));
  }

  void copyTransferableObject (Transferable contents) {
    getClipboard();
    clipboard.setContents(contents, null);
  }

  String pasteString () {
    String data = null;
    try {
      data = (String)pasteObject(DataFlavor.stringFlavor);
    }
    catch (Exception e) {
      System.err.println("Error getting String from clipboard: " + e);
    }
    return data;
  }

  Object pasteObject (DataFlavor flavor)
    throws UnsupportedFlavorException, IOException
  {
    Object obj = null;
    getClipboard();

    Transferable content = clipboard.getContents(null);
    if (content != null)
      obj = content.getTransferData(flavor);

    return obj;
  }
}

class MoveTool extends PixmapTool {

  int startCol;
//  int startRow;
  
  int currentCol;
 // int currentRow;
 
 Pixmap translated;
  
  MoveTool(PixmapEditor editor) {
    super(editor);
    translated = new Pixmap(editor.getPixmap());
  }

  void reset() {
    startCol = /*startRow = */currentCol = /*currentRow = */DEFAULT;
  }

  void display() {
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS || currentCol != DEFAULT) {
      fill(COLOR_EDITOR_TOOL);
      int column = (currentCol == DEFAULT ? editor.getPixmap().column(idx) : currentCol);
      int row = editor.getPixmap().nRows()/2;
      rect(editor.columnToX(column), editor.rowToY(row-1), editor.getColumnSize(), 3*editor.getRowSize());
      rect(editor.columnToX(column-1), editor.rowToY(row), 3*editor.getColumnSize(), editor.getRowSize());
    }

  }

  void mousePressedAt(int idx) {
    startCol = currentCol = editor.getPixmap().column(idx);
    translated.copyFrom(editor.getPixmap());
    //startRow = currentRow = editor.row(idx);
  }

  void mouseDraggedAt(int idx) {
    currentCol = editor.getPixmap().column(idx);
    _translate(currentCol - startCol);
    //currentRow = editor.row(idx);    
  }

  void mouseWheel(float amount) {
    currentCol += amount;
    _translate(currentCol - startCol);
  }
  
  void mouseReleasedAt(int idx) {
    reset();
  }
  
  void _translate(int translateCol) {
    Pixmap pixmap = editor.getPixmap();
    for (int c=0; c<pixmap.nColumns(); c++) {
      int tc = (c - translateCol + pixmap.nColumns()) % pixmap.nColumns();
      for (int r=0; r<pixmap.nRows(); r++) {
        pixmap.set(c, r, translated.get( tc, r));
      }
    }
    
  }

}

class PenTool extends PixmapTool {
  
  int previousSquare;
  int penMode;

  PenTool(PixmapEditor editor) {
    super(editor);
    previousSquare = penMode = DEFAULT;
  }
  
  void display() {
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS) {
      fill(COLOR_EDITOR_TOOL);
      int column = editor.getPixmap().column(idx);
      int row = editor.getPixmap().row(idx);
      
      rect(editor.columnToX(column), editor.rowToY(row), editor.getColumnSize(), editor.getRowSize());
    }
  }
  
  void mousePressedAt(int idx) {
    previousSquare = DEFAULT;
    checkMouse(idx);
  }

  void mouseDraggedAt(int idx) {
    checkMouse(idx);
  }

  void mouseReleasedAt(int idx) {
    penMode = DEFAULT;
  }

  void keyPressed() {
  }

  void checkMouse(int idx) {
    if (idx != previousSquare ) {
      if ( penMode == DEFAULT ) {
        penMode = (editor.getPixmap().get(idx) == Pixmap.ON ? Pixmap.OFF : Pixmap.ON);
      }
      editor.getPixmap().set(idx, penMode);
      previousSquare = idx;
    }
  }

}
class Pixmap {
  int nColumns;
  int nRows;
  
  int[] pixels;
  
  static final int ON  = 1;
  static final int OFF = 0;
  
  Pixmap(PImage img) {
    if (img == null) {
      _init(0, 0);
    }
    else {
      _init(img.width, img.height);
      img.filter(THRESHOLD);
      img.loadPixels();
      for (int i=0; i<nPixels(); i++) {
        pixels[i] = ( img.pixels[i] == color(0) ? OFF : ON );
      }
    }
  }
  
  Pixmap(Pixmap copy) {
    _init(copy.nColumns(), copy.nRows());
    for (int i=0; i<nPixels(); i++)
      set(i, copy.get(i));
  }
  
  Pixmap(int nColumns, int nRows) {
    _init(nColumns, nRows);
    clear();
  }
  
  int nColumns() { return nColumns; }
  int nRows() { return nRows; }
  int nPixels() { return pixels.length; }
  
  void clear() {
    for (int i=0; i<nPixels(); i++)
      pixels[i] = OFF;    
  }
  
  void set(int i, int val) {
    pixels[i] = val;    
  }

  void set(int x, int y, int val) {
    set(_indexOf(x, y), val);
  }
  
  int get(int x, int y) {
    return get(_indexOf(x, y));
  }
  
  int get(int i) {
    return pixels[i];    
  }

  void toggle(int i) {
    set(i, get(i) == ON ? OFF : ON);    
  }
  
  void toggle(int x, int y) {
    toggle(_indexOf(x, y));
  }
  
  /// Inserts pixmap at position (x, y).
  void stamp(int x, int y, Pixmap submap) {
    for (int xs=0; xs<submap.nColumns(); xs++) {
      for (int ys=0; ys<submap.nRows(); ys++) {
        int xc = x+xs;
        int yc = y+ys;
        if (0 <= xc && xc < nColumns() && 0 <= yc && yc < nRows()) {
          set(xc, yc, submap.get(xs, ys));
        }
      }
    }
  }
  
  int column(int index) {
    return index % nColumns;
  }
  
  int row(int index) {
    return index / nColumns;
  }
  
  void copyFrom(Pixmap pixmap) {
    for (int i=0; i<nPixels(); i++) {
      set(i, pixmap.get(i));
    }
  }
  
  int _indexOf(int x, int y) {
    return y*nColumns + x;
  }
  
  void _init(int nColumns, int nRows) {
    this.nColumns = nColumns;
    this.nRows    = nRows;
    pixels = new int[nColumns * nRows];
  }
}
class PixmapEditor {
  static final int OUT_OF_BOUNDS = -1;

  int editorX;
  int editorY;
  int editorWidth;
  int editorHeight;
  Pixmap pixmap;

  float colSize;
  float rowSize;
  int border = 0;

  PixmapEditor(int x, int y, int w, int h, Pixmap pixmap) {
    editorX = x;
    editorY = y;
    editorWidth = w;
    editorHeight = h;
    this.pixmap = pixmap;

    colSize = (editorWidth -border*2-1) / float(pixmap.nColumns());
    rowSize = (editorHeight-border*2-1) / float(pixmap.nRows());
  }
  
  Pixmap getPixmap() {
    return pixmap;
  }
  
  // Coordinate systems conversions.
  
  float columnToX(int col) {
    return editorX + col*colSize + border;
  }
  
  float rowToY(int row) {
    return editorY + row*rowSize + border;    
  }

  int xToColumn(float x) {
    return floor( (x - border - editorX) / colSize );
  }
  
  int yToRow(float y) {
    return floor( (y - border - editorY) / rowSize );
  }
  
  float getColumnSize() { return colSize; }
  float getRowSize() { return rowSize; }
 
  int getWidth() { return editorWidth-2*border; }
  int getHeight() { return editorHeight-2*border; }
  
  void display() {
    // Draw editor background.
    fill(COLOR_EDITOR_OFF);
    rect(editorX, editorY, getWidth(), getHeight());

    // Draw grid.
    strokeWeight(0.5);
    stroke(COLOR_EDITOR_STROKE);

    for (int i = 0; i < pixmap.nColumns()+1; i++) {
      float x = columnToX(i);
      line(x, rowToY(0), x, rowToY(pixmap.nRows()));
    }
    for (int i = 0; i < pixmap.nRows()+1; i++) {
      float y = rowToY(i);
      line(columnToX(0), y, columnToX(pixmap.nColumns()), y);
    }

    // Last line of grid
    //line(editorWidth-1-border, border, editorWidth-1-border, editorHeight-border-1);
    //line(border, editorHeight-1-border, editorWidth-1-border, editorHeight-1-border);

    // Text
//    fill(255);
//    for (int r = 0; r < pixmap.nRows(); r++)
//      text(r, border/2, (r+0.5)*rowSize+border);
//    for (int c = 0; c < pixmap.nColumns(); c++)
//      text(c, (c+0.5)*colSize+border, border/2);

    // Draw pixels.
    fill(COLOR_EDITOR_ON);
    for (int r = 0; r < pixmap.nRows(); r++) {
      for (int c = 0; c < pixmap.nColumns(); c++) {
        if (pixmap.get(c, r) == Pixmap.ON) {
          rect(columnToX(c), rowToY(r), colSize, rowSize);
        }
      }
    }
  }

  // Returns the index in the pixmap corresponding to the current mouse position.
  int mouseOver() {
    int c = xToColumn(mouseX);
    int r = yToRow(mouseY);

    if (c >= 0 && r >= 0 && c < pixmap.nColumns() && r < pixmap.nRows())
      return pixmap._indexOf(c, r);
    else
      return OUT_OF_BOUNDS;
  }

}
abstract class PixmapTool {
  
  static final int DEFAULT = -1;
  
  PixmapEditor editor;
  
  PixmapTool(PixmapEditor editor) {
    this.editor = editor;
    reset();
  }
  
  void reset() {}
  
  void display() {}
  
  void mousePressed() {
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS)
      mousePressedAt(idx);
  }
  
  void mouseReleased() {
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS)
      mouseReleasedAt(idx);
  }
  
  void mouseDragged() {
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS)
      mouseDraggedAt(idx);
  }

  void mouseClicked() {
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS)
      mouseClickedAt(idx);
  }
  
  void mouseMoved() {
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS)
      mouseMovedAt(idx);
  }
  
  void mouseWheel(float amount) {}

  void keyTyped() {}
  void keyPressed() {}
  void keyReleased() {}
  
  void mousePressedAt(int idx) {}
  void mouseReleasedAt(int idx) {}
  void mouseDraggedAt(int idx) {}
  void mouseClickedAt(int idx) {}
  void mouseMovedAt(int idx) {}
}

/// This class generates pixmaps from images.
abstract class TextPixmapFactory {
  
  abstract Pixmap textToPixmap(String text, boolean ltr);
}

class PFontTextPixmapFactory extends TextPixmapFactory {
  
  // The font.
  PFont font;
  
  // The vertical offset.
  int offset;
  
  // The font size.
  int fontSize;
  
  PFontTextPixmapFactory(PFont font, int offset, int fontSize) {
    this.font = font;
    this.offset = offset;
    this.fontSize = fontSize;
  }
  
  Pixmap textToPixmap(String text, boolean ltr) {
    if (text.isEmpty())
      return null;

    int w = ceil(textWidth(text));
    if (w == 0)
      return null;
    
    // Need to call this iot make textWidth effective.
    textFont(font);

    // Create graphics to hold text.
    PGraphics pg = createGraphics(w, fontSize);
    
    // Draw text on graphics.
    pg.beginDraw();
    pg.background(0);
    pg.fill(255);
    pg.textFont(font);
    if (ltr) {
      pg.textAlign(LEFT, TOP);
      pg.text(text, 0, offset);
    } 
    else {
      pg.textAlign(RIGHT, TOP);
      pg.text(text, pg.width-1, offset);
    }
    pg.endDraw();

    return new Pixmap(pg);
  }
}

class BitmapTextPixmapFactory extends TextPixmapFactory {
  // The list of pixmaps holding the glyphs.
  HashMap<Character, Pixmap> glyphs;
  
  // Constructor.
  BitmapTextPixmapFactory(String fileName, boolean imageFile) {
    glyphs = new HashMap<Character,Pixmap>();
    Table table = loadTable(fileName);
    int k=0;
    for (TableRow row : table.rows()) {
      
      // Character.
      String str = row.getString(0);
      if (str.length() != 1)
        continue;
      Character c = new Character(str.charAt(0));
      
      Pixmap pix;
      if (imageFile) {
        // Corresponding image.
        String imageFileName = row.getString(1);
        PImage img = loadImage(imageFileName);
        pix = new Pixmap(img);
      } else {
        // XXX N_ROWS is hardcoded, might hamper backwards-compatibility
        // XXX also: we add an extra empty (blank) column at the end of each letter
        pix = new Pixmap(table.getColumnCount(), N_ROWS);
        for (int i=1; i<table.getColumnCount(); i++) {
          str = row.getString(i).trim();
          int colBits = Integer.decode(str);
          for (int j=0; j<N_ROWS; j++) {
            pix.set(i-1, j, ( (colBits & 1) == 1 ? Pixmap.ON : Pixmap.OFF));
            colBits >>= 1;
          }
        }
      }
      
      // Add to glyphs.
      glyphs.put(c, pix);
      k++;
    }
  }
  
  Pixmap textToPixmap(String text, boolean ltr) {
    if (text.isEmpty())
      return null;
    
    // Convert text to array of chars.
    char[] textData = text.toCharArray();
    if (!ltr)
      textData = reverse(textData);
    
    // First compute the dimensions of the text data.
    int nCols = 0;
    int nRows = 0;
    for (int i=0; i<textData.length; i++) {
      Pixmap glyphPix = glyphs.get(new Character(textData[i]));
      if (glyphPix != null) {
        nCols += glyphPix.nColumns();
        nRows = max(nRows, glyphPix.nRows());
      }
    }
    
    // Create pixmap.
    Pixmap pix = new Pixmap(nCols, nRows);
    int currentX = 0;
    for (int i=0; i<textData.length; i++) {
      Pixmap glyphPix = glyphs.get(new Character(textData[i]));
      if (glyphPix != null) {
        pix.stamp(currentX, 0, glyphPix);
        currentX += glyphPix.nColumns();
      }
    }
    
    return pix;
  }
}


class TextTool extends PixmapTool {

  // Currently loaded text factory.
  TextPixmapFactory textFactory;
  
  // Left-to-right (vs right-to-left).
  boolean ltr;

  // The starting position of the cursor (in column coordinates).
  int cursorStartColumn;

  // Cursor index (in letter space).
  int cursorIndex;

  // The current string.
  String text;
  Pixmap textPixmap;

  TextTool(PixmapEditor editor, TextPixmapFactory textFactory) {
    super(editor);
    setTextFactory(textFactory);
    setLTR(true);
    reset();
  }

  void setTextFactory(TextPixmapFactory textFactory) {
    this.textFactory = textFactory;
    reset();
  }
  
  void setLTR(boolean ltr) {
    this.ltr = ltr;
    reset();
  }

  void reset() {
    cursorStartColumn = DEFAULT;
    cursorIndex = 0;
    text = "";
    textPixmap = null;
  }

  void display() {
    // The cursor itself (blinking).
    boolean on = (millis() % 1000 < 500);
    if (hasCursor() && on) {
      _drawCursor( cursorColumn(),    COLOR_EDITOR_TOOL);
    }

    // Move the cursor around the screen.
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS) {
      _drawCursor( editor.getPixmap().column(idx), COLOR_EDITOR_TEXT_CURSOR);
    }
  }

  void mousePressedAt(int idx) {
  }

  void mouseDraggedAt(int idx) {
  }

  void mouseReleasedAt(int idx) {
    setCursor(editor.getPixmap().column(idx));
  }

  void keyTyped() {
    if (key != CODED && hasCursor()) {
      if (key == BACKSPACE) {
        if (textPixmap != null && cursorIndex > 0) {
          // Erase everything.
          for (int i=0; i<textPixmap.nPixels(); i++)
            textPixmap.set(i, Pixmap.OFF);

          _stamp(textPixmap);

          // Reduce cursor index.
          cursorIndex = max(cursorIndex-1, 0);

          // Remove letter from text.
          text = text.substring(0, cursorIndex) + text.substring(cursorIndex+1);

          // Regenerate pixmap and print it.
          textPixmap = _pixmapFromText(text);
          _stamp(textPixmap);
        }
      }
      else {
        // Insert letter in string.
        text = text.substring(0, cursorIndex) + key + text.substring(cursorIndex);
        cursorIndex++;
        // Stamp text.
        textPixmap = _pixmapFromText(text);
        _stamp(textPixmap);
      }
    }
  }

  void keyPressed() {
    if (keyCode == LEFT) {
      cursorIndex = max(cursorIndex-1, 0);
    }
    else if (keyCode == RIGHT) {
      cursorIndex = min(cursorIndex+1, text.length());
    }
    else if (keyCode == ENTER) {
      reset();
    }
  }

  boolean hasCursor() {
    return cursorStartColumn != DEFAULT;
  }

  int cursorColumn() {
    int column = cursorStartColumn;
    
    Pixmap pix = _pixmapFromText(text);
    if (pix != null)
      column += (ltr ? +1 : -1) * pix.nColumns();
      
    return column;
  }

  void setCursor(int column) {
    reset();
    cursorStartColumn = column;
  }

  void _drawCursor(int column, color fillColor) {
    // Draw vertical line.
    fill(fillColor);
    rect(editor.columnToX(column), editor.rowToY(0), editor.getColumnSize(), editor.getHeight());
  }

  Pixmap _pixmapFromText(String text) {
    return textFactory.textToPixmap(text, ltr);
  }

  void _stamp(Pixmap pix) {
    if (pix == null)
      return;

    // Stamp typed letter.
    editor.getPixmap().stamp(ltr ? cursorStartColumn : cursorStartColumn - pix.nColumns() + 1, 0, pix);
  }
}


