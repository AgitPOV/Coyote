class PenTool extends PixmapTool {
  
  int previousSquare;
  int penMode;

  PenTool(PixmapEditor editor) {
    super(editor);
    previousSquare = penMode = DEFAULT;
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
