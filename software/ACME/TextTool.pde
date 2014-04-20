class TextTool extends PixmapTool {

  PFont font;

  int cursorColumn;

  TextTool(PixmapEditor editor, String fontName) {
    super(editor);
    setFont(fontName);
    cursorColumn = DEFAULT;
  }

  void setFont(String fontName) {
    font = loadFont(fontName);
  }

  void display() {
    // The cursor itself (blinking).
    boolean on = (millis() % 1000 < 500);
    if (cursorColumn != DEFAULT && on) {
      _drawCursor( editor.getPixmap().column(cursorColumn), color(255, 0, 0, 128));
    }

    // Move the cursor around the screen.
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS) {
      _drawCursor( editor.getPixmap().column(idx), color(255, 0, 0, 128));
    }
  }

  void mousePressedAt(int idx) {
  }

  void mouseDraggedAt(int idx) {
  }

  void mouseReleasedAt(int idx) {
    setCursor(editor.getPixmap().column(idx));
  }

  void keyTyped() {
    if (cursorStartColumn != DEFAULT && key != CODED) {
      // Append letter to string.
      text += key;
      cursorIndex++;
      // Create pixmap.
      textPixmap = new Pixmap(stringToImage(text, N_ROWS, font, ltr));
      // Stamp typed letter.
      editor.getPixmap().stamp(ltr ? cursorStartColumn : cursorStartColumn - textPixmap.nColumns() + 1, 0, textPixmap);
      // Move cursor.
      // cursorStartColumn += (ltr ? +1 : -1) * pix.nColumns();
    }
  }

  PImage stringToImage(String text, int fontSize, PFont font, boolean ltr) {
    PGraphics pg = createGraphics(ceil(textWidth(text)), fontSize);
    println(pg.width + " " + pg.height);
    pg.beginDraw();
    pg.background(100, 0, 0);
    pg.textFont(font, fontSize);
    if (ltr) {
      pg.textAlign(LEFT, TOP);
      pg.text(text, 0, 0);
    } 
    else {
      pg.textAlign(RIGHT, TOP);
      pg.text(text, pg.width-1, 0);
    }
    pg.endDraw();
    return pg;
  }
  
  void setCursor(int column) {
    cursorColumn = column;
  }
  
  void resetCursor() {
    cursorColumn = DEFAULT;
  }

  void _drawCursor(int column, color fillColor) {
    // Draw vertical line.
    fill(fillColor);
    rect(editor.columnToX(column), editor.rowToY(0), editor.getColumnSize(), editor.getHeight());
  }
}

