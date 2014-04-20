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
//    font = createFont("Arial", 12);
    font = loadFont(fontName);
  }
  
  void setLTR(boolean ltr) {
    this.ltr = ltr;
  }

  void display() {
    // The cursor itself (blinking).
    boolean on = (millis() % 1000 < 500);
    if (hasCursor() && on) {
      _drawCursor( cursorStartColumn, color(0, 255, 0, 128));
      _drawCursor( cursorColumn(), color(255, 0, 0, 128));
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

    if (text.length() > 0) {
      Pixmap pix = new Pixmap(stringToImage(text, N_ROWS, font, ltr));
      column += pix.nColumns();
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
}

