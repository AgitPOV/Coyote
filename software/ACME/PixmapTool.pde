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

