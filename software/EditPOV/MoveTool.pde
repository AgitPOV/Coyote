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

