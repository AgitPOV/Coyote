int cols = 49;
int rows = 12;
float colSize;
float rowSize;
float border = 20;
int squares[] = new int[rows*cols];

int previousSquare = -1;


int penMode = -1;

ClipHelper clipboard = new ClipHelper();

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
      if (squares[r*cols+c] == 1) {
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
        penMode = squares[index] == 1 ? 0 : 1;
      }
      squares[index] = penMode;
      previousSquare = index;
    }
  }
  // println(r+" "+c);
}


void keyPressed() {
  if ( keyCode == BACKSPACE || keyCode == DELETE ) {
    for (int i =0; i < squares.length; i++) {

      squares[i]= 0;
    }
  } 
  else if ( key == 'c' || key == 'C' ) {
    copyToClipboard();
  }
}


void copyToClipboard() {
  /*
  prog_int16_t povArray[] PROGMEM
  
  */
  String code = "#define POVARRAYSIZE "+cols+"\rprog_int16_t povArray[] PROGMEM= { "; 
  for ( int c =0 ; c <  cols ; c++ ) {
    int compresssedRow = 0;
    for ( int r =0 ; r < rows ; r++) {
      compresssedRow = compresssedRow << 1;
      compresssedRow = compresssedRow | (squares[r*cols+c] == 0 ? 0 : 1) ;
    }
    code = code + compresssedRow ;
    if ( c != cols - 1 ) code = code + " , ";
  }
  code = code + "};\r";
  clipboard.copyString(code);
  
}


/*

 12 * 7
 
 prog_uint16_t PROGMEM POV_FONT [][7] =
 {
 {
 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000  }
 
 
 */
