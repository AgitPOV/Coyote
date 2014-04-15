class PixmapEditor {
  int editorWidth;
  int editorHeight;
  Pixmap pixmap;

  float colSize;
  float rowSize;
  float border = 20;

  int previousSquare = -1;
  int penMode = -1;

  PixmapEditor(int w, int h, Pixmap pixmap) {
    editorWidth = w;
    editorHeight = h;
    this.pixmap = pixmap;

    colSize = (editorWidth -border*2-1) / float(pixmap.nColumns());
    rowSize = (editorHeight-border*2-1) / float(pixmap.nRows());
  }

  void display() {
    textAlign(CENTER, CENTER);
    background(130, 101, 1);

    // Grid
    stroke(0);
    for (int i = 0;i < (cols) ;i++) {
      line(i*colSize+border, border, i*colSize+border, editorHeight-border-1);
    }
    for (int i = 0;i < (rows) ;i++) {
      line(border, i*rowSize+border, editorWidth-border-1, i*rowSize+border);
    }

    // Last line of grid
    line(editorWidth-1-border, border, editorWidth-1-border, editorHeight-border-1);
    line(border, editorHeight-1-border, editorWidth-1-border, editorHeight-1-border);

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
    previousSquare = -1;
    checkMouse();
  }
  
  void mouseDragged() {
    checkMouse();   
  }

  void mouseReleased() {
    penMode = -1;
  }

  void keyPressed() {
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
  }
}

