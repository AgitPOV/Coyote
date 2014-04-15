int cols = 49;
int rows = 12;
float colSize;
float rowSize;
float border = 20;

int previousSquare = -1;


int penMode = -1;

ClipHelper clipboard = new ClipHelper();

Pixmap pixmap = new Pixmap(cols, rows);

void setup() {

  size(640, 256);


  frameRate(20);
  colSize = (width-border*2-1) / float(cols);
  rowSize = (height-border*2-1) / float(rows);
  
  textAlign(CENTER, CENTER);
}


void draw() {


  background(130, 101, 1);

  if (mousePressed) {
    checkMouse();
  }
  else {
    previousSquare = -1;
  }


  // Grid
  stroke(0);
  for (int i = 0;i < (cols) ;i++) {
    line(i*colSize+border, border, i*colSize+border, height-border-1);
  }
  for (int i = 0;i < (rows) ;i++) {
    line(border, i*rowSize+border, width-border-1, i*rowSize+border);
  }

  // Last line of grid
  line(width-1-border, border, width-1-border, height-border-1);
  line(border, height-1-border, width-1-border, height-1-border);

  // Text
  fill(255);
  for (int r = 0; r < rows; r++) text(r, border/2, (r+0.5)*rowSize+border);
  for (int c = 0; c < cols; c++) text(c, (c+0.5)*colSize+border, border/2);

  // Squares
  fill(233, 217, 184);
  for (int r = 0; r < rows; r++) {
    for (int c = 0; c < cols; c++) {
      if (pixmap.get(c, r) == Pixmap.ON) {
        rect(c*colSize+border, r*rowSize+border, colSize, rowSize);
      }
    }
  }
}

void mousePressed() {
  frameRate(20);
  previousSquare = -1;
  checkMouse();
}
void mouseReleased() {
  penMode = -1;
}


void checkMouse() {
  int c = floor((mouseX - border)/colSize);
  int r = floor((mouseY - border)/rowSize);

  if (c >= 0 && r >= 0 && c < cols && r < rows) {
    int index = r*cols + c;
    //println(index);
    if (index != previousSquare ) {
      if ( penMode == -1 ) {
        penMode = (pixmap.get(index) == Pixmap.ON ? Pixmap.OFF : Pixmap.ON);
      }
      pixmap.set(index, penMode);
      previousSquare = index;
    }
  }
  // println(r+" "+c);
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


/*

 12 * 7
 
 prog_uint16_t PROGMEM POV_FONT [][7] =
 {
 {
 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000  }
 
 
 */
