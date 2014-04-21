
static final int BACKGROUND = #777CAF;

static final int N_COLUMNS = 49;
static final int N_ROWS    = 12;

static final int WINDOW_WIDTH  = 800;
static final int WINDOW_HEIGHT = 600;

//static final int EDITOR_BORDER = 20;
static final int EDITOR_WIDTH   = 600;
static final int EDITOR_HEIGHT  = EDITOR_WIDTH*N_ROWS/N_COLUMNS;
static final int EDITOR_PADDING = 50;
static final int CONTROL_TOP    = 2*EDITOR_PADDING+EDITOR_HEIGHT;

ClipHelper clipboard = new ClipHelper();

Pixmap pixmap = new Pixmap(N_COLUMNS, N_ROWS);
PixmapEditor editor;
PixmapTool tool;

void setup() {
  size(WINDOW_WIDTH, WINDOW_HEIGHT);
  frameRate(20);
  
  cp5 =  new ControlP5(this);

  editor = new PixmapEditor((width-EDITOR_WIDTH)/2, EDITOR_PADDING, EDITOR_WIDTH, EDITOR_HEIGHT, pixmap);
}

void draw() {
  background(BACKGROUND);
  editor.display();
  tool.display();
  textTool.setLTR(true);
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

void keyPressed() {
  tool.keyPressed();
  if ( keyCode == DELETE ) {
    for (int i =0; i < pixmap.nPixels(); i++) {
      pixmap.set(i, Pixmap.OFF);
    }
  } 
  else if ( key == 'c' || key == 'C' ) {
    copyToClipboard4Controller();
  } 
  else if ( key == 'd' || key == 'D' ) {
    copyToClipboard4Dataflow();
  }
}

void keyReleased() {
  tool.keyReleased();
}

void copyToClipboard4Controller() {
  /*
  prog_int16_t povArray[] PROGMEM
   
   */
  String code = "#define POVARRAYSIZE "+N_COLUMNS+"\rint povArray[] = { "; 
  for ( int c =0 ; c <  N_COLUMNS ; c++ ) {
    int compresssedRow = 0;
    for ( int r =0 ; r < N_ROWS ; r++) {
      compresssedRow = compresssedRow << 1;
      compresssedRow = compresssedRow | (pixmap.get(c, r) == Pixmap.OFF ? Pixmap.OFF : Pixmap.ON);
    }
    code = code + compresssedRow ;
    if ( c != N_COLUMNS - 1 ) code = code + " , ";
  }
  code = code + "};\r";
  clipboard.copyString(code);
}

void copyToClipboard4Dataflow() {
  String code = ""; 
  for ( int c =0 ; c <  N_COLUMNS ; c++ ) {
    int compresssedRow = 0;
    for ( int r =0 ; r < N_ROWS ; r++) {
      compresssedRow = compresssedRow << 1;
      compresssedRow = compresssedRow | (pixmap.get(c, r) == Pixmap.OFF ? Pixmap.OFF : Pixmap.ON);
    }
    code = code + compresssedRow ;
    if ( c != N_COLUMNS - 1 ) code = code + " ";
  }
  clipboard.copyString(code);
}


