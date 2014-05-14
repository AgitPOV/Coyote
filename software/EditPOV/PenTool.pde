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
