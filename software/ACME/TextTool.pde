class TextTool extends PixmapTool {

  // Currently loaded font.
  PFont font;

  // Left-to-right (vs right-to-left).
  boolean ltr;

  // The starting position of the cursor (in column coordinates).
  int cursorStartColumn;

  // Cursor index (in letter space).
  int cursorIndex;

  // The current string.
  String text;
  Pixmap textPixmap;

  TextTool(PixmapEditor editor, String fontName) {
    super(editor);
    setFont(fontName);
    setLTR(true);
    reset();
  }

  void setFont(String fontName) {
    font = loadFont(fontName);
  }

  void setLTR(boolean ltr) {
    this.ltr = ltr;
  }

  void display() {
    // The cursor itself (blinking).
    boolean on = (millis() % 1000 < 500);
    if (hasCursor() && on) {
//      _drawCursor( cursorStartColumn, color(0, 255, 0, 128));
      _drawCursor( cursorColumn(),    color(255, 0, 0, 128));
    }

    // Move the cursor around the screen.
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS) {
      _drawCursor( editor.getPixmap().column(idx), color(255, 0, 0, 64));
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
    if (key != CODED && hasCursor()) {
      if (key == BACKSPACE) {
        if (textPixmap != null && cursorIndex > 0) {
          // Erase everything.
          for (int i=0; i<textPixmap.nPixels(); i++)
            textPixmap.set(i, Pixmap.OFF);

          _stamp(textPixmap);

          // Reduce cursor index.
          cursorIndex = max(cursorIndex-1, 0);

          // Remove letter from text.
          text = text.substring(0, cursorIndex) + text.substring(cursorIndex+1);

          // Regenerate pixmap and print it.
          textPixmap = _pixmapFromText(text);
          _stamp(textPixmap);
        }
      }
      else {
        // Insert letter in string.
        text = text.substring(0, cursorIndex) + key + text.substring(cursorIndex);
        cursorIndex++;
        // Stamp text.
        textPixmap = _pixmapFromText(text);
        _stamp(textPixmap);
      }
    }
  }

  void keyPressed() {
    if (keyCode == LEFT) {
      cursorIndex = max(cursorIndex-1, 0);
    }
    else if (keyCode == RIGHT) {
      cursorIndex = min(cursorIndex+1, text.length());
    }
    else if (keyCode == ENTER) {
      reset();
    }
  }

  PImage stringToImage(String text, int fontSize, PFont font, boolean ltr) {
    if (text.isEmpty())
      return null;

    // Need to call this iot make textWidth effective.
    textFont(font, fontSize);

    // Create graphics to hold text.
    PGraphics pg = createGraphics(ceil(textWidth(text)), fontSize);
    //println(pg.width + " " + pg.height);
    pg.beginDraw();
    pg.background(0);
    pg.fill(255);
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

  boolean hasCursor() {
    return cursorStartColumn != DEFAULT;
  }

  int cursorColumn() {
    int column = cursorStartColumn;

    int substringLength = (ltr ? cursorIndex : text.length() - cursorIndex);
    if (substringLength > 0) {
      Pixmap pix = new Pixmap(stringToImage(text.substring(0, substringLength), N_ROWS, font, ltr));
      column += (ltr ? +1 : -1) * pix.nColumns();
    }

    return column;
  }

  void setCursor(int column) {
    reset();
    cursorStartColumn = column;
  }

  void reset() {
    cursorStartColumn = DEFAULT;
    cursorIndex = 0;
    text = "";
    textPixmap = null;
  }

  void _drawCursor(int column, color fillColor) {
    // Draw vertical line.
    fill(fillColor);
    rect(editor.columnToX(column), editor.rowToY(0), editor.getColumnSize(), editor.getHeight());
  }

  Pixmap _pixmapFromText(String text) {
    if (text.isEmpty())
      return null;

    // Create pixmap.
    return new Pixmap(stringToImage(text, N_ROWS, font, ltr));
  }

  void _stamp(Pixmap pix) {
    if (pix == null)
      return;

    // Stamp typed letter.
    editor.getPixmap().stamp(ltr ? cursorStartColumn : cursorStartColumn - pix.nColumns() + 1, 0, pix);
  }
}

