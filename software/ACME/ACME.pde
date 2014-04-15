int cols = 49;
int rows = 12;


ClipHelper clipboard = new ClipHelper();

Pixmap pixmap = new Pixmap(cols, rows);
PixmapEditor editor;

void setup() {

  size(640, 256);


  frameRate(20);
  editor = new PixmapEditor(width, height, pixmap);
  
}


void draw() {
  editor.display();
}

void mousePressed() {
  editor.mousePressed();
}

void mouseDragged() {
  editor.mouseDragged();
}

void mouseReleased() {
  editor.mouseReleased();
}

void keyPressed() {
  if ( keyCode == BACKSPACE || keyCode == DELETE ) {
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

void copyToClipboard4Controller() {
  /*
  prog_int16_t povArray[] PROGMEM
   
   */
  String code = "#define POVARRAYSIZE "+cols+"\rint povArray[] = { "; 
  for ( int c =0 ; c <  cols ; c++ ) {
    int compresssedRow = 0;
    for ( int r =0 ; r < rows ; r++) {
      compresssedRow = compresssedRow << 1;
      compresssedRow = compresssedRow | (pixmap.get(c, r) == Pixmap.OFF ? Pixmap.OFF : Pixmap.ON);
    }
    code = code + compresssedRow ;
    if ( c != cols - 1 ) code = code + " , ";
  }
  code = code + "};\r";
  clipboard.copyString(code);
}

void copyToClipboard4Dataflow() {
  String code = ""; 
  for ( int c =0 ; c <  cols ; c++ ) {
    int compresssedRow = 0;
    for ( int r =0 ; r < rows ; r++) {
      compresssedRow = compresssedRow << 1;
      compresssedRow = compresssedRow | (pixmap.get(c, r) == Pixmap.OFF ? Pixmap.OFF : Pixmap.ON);
    }
    code = code + compresssedRow ;
    if ( c != cols - 1 ) code = code + " ";
  }
  clipboard.copyString(code);
}


