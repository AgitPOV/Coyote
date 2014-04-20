class PixmapEditor {
  static final int OUT_OF_BOUNDS = -1;

  int editorX;
  int editorY;
  int editorWidth;
  int editorHeight;
  Pixmap pixmap;

  float colSize;
  float rowSize;
  int border = 20;

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
  
  float columnToX(int col) {
    return editorX + col*colSize + border;
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
  
  float rowToY(int row) {
    return editorY + row*rowSize + border;    
  }

  void display() {
    textAlign(CENTER, CENTER);
    background(130, 101, 1);

    // Grid
    stroke(0);

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
    fill(255);
    for (int r = 0; r < pixmap.nRows(); r++)
      text(r, border/2, (r+0.5)*rowSize+border);
    for (int c = 0; c < pixmap.nColumns(); c++)
      text(c, (c+0.5)*colSize+border, border/2);

    // Squares
    fill(233, 217, 184);
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
