class TextTool extends PixmapTool {

  // Currently loaded text factory.
  TextPixmapFactory textFactory;
  
  // Left-to-right (vs right-to-left).
  boolean ltr;

  // The starting position of the cursor (in column coordinates).
  int cursorStartColumn;

  // Cursor index (in letter space).
  int cursorIndex;

  // The current string.
  String text;
  Pixmap textPixmap;

  TextTool(PixmapEditor editor, TextPixmapFactory textFactory) {
    super(editor);
    setTextFactory(textFactory);
    setLTR(true);
    reset();
  }

  void setTextFactory(TextPixmapFactory textFactory) {
    this.textFactory = textFactory;
    reset();
  }
  
  void setLTR(boolean ltr) {
    this.ltr = ltr;
    reset();
  }

  void reset() {
    cursorStartColumn = DEFAULT;
    cursorIndex = 0;
    text = "";
    textPixmap = null;
  }

  void display() {
    // The cursor itself (blinking).
    boolean on = (millis() % 1000 < 500);
    if (hasCursor() && on) {
      _drawCursor( cursorColumn(),    COLOR_EDITOR_TOOL);
    }

    // Move the cursor around the screen.
    int idx = editor.mouseOver();
    if (idx != PixmapEditor.OUT_OF_BOUNDS) {
      _drawCursor( editor.getPixmap().column(idx), COLOR_EDITOR_TEXT_CURSOR);
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

  boolean hasCursor() {
    return cursorStartColumn != DEFAULT;
  }

  int cursorColumn() {
    int column = cursorStartColumn;
    
    Pixmap pix = _pixmapFromText(text);
    if (pix != null)
      column += (ltr ? +1 : -1) * pix.nColumns();
      
    return column;
  }

  void setCursor(int column) {
    reset();
    cursorStartColumn = column;
  }

  void _drawCursor(int column, color fillColor) {
    // Draw vertical line.
    fill(fillColor);
    rect(editor.columnToX(column), editor.rowToY(0), editor.getColumnSize(), editor.getHeight());
  }

  Pixmap _pixmapFromText(String text) {
    return textFactory.textToPixmap(text, ltr);
  }

  void _stamp(Pixmap pix) {
    if (pix == null)
      return;

    // Stamp typed letter.
    editor.getPixmap().stamp(ltr ? cursorStartColumn : cursorStartColumn - pix.nColumns() + 1, 0, pix);
  }
}

