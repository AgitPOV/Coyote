/// This class generates pixmaps from images.
abstract class TextPixmapFactory {
  
  abstract Pixmap textToPixmap(String text, boolean ltr);
}

class PFontTextPixmapFactory extends TextPixmapFactory {
  
  // The font.
  PFont font;
  
  // The vertical offset.
  int offset;
  
  // The font size.
  int fontSize;
  
  PFontTextPixmapFactory(PFont font, int offset, int fontSize) {
    this.font = font;
    this.offset = offset;
    this.fontSize = fontSize;
  }
  
  Pixmap textToPixmap(String text, boolean ltr) {
    if (text.isEmpty())
      return null;

    int w = ceil(textWidth(text));
    if (w == 0)
      return null;
    
    // Need to call this iot make textWidth effective.
    textFont(font);

    // Create graphics to hold text.
    PGraphics pg = createGraphics(w, fontSize);
    
    // Draw text on graphics.
    pg.beginDraw();
    pg.background(0);
    pg.fill(255);
    pg.textFont(font);
    if (ltr) {
      pg.textAlign(LEFT, TOP);
      pg.text(text, 0, offset);
    } 
    else {
      pg.textAlign(RIGHT, TOP);
      pg.text(text, pg.width-1, offset);
    }
    pg.endDraw();

    return new Pixmap(pg);
  }
}

class BitmapTextPixmapFactory extends TextPixmapFactory {
  // The list of pixmaps holding the glyphs.
  HashMap<Character, Pixmap> glyphs;
  
  // Constructor.
  BitmapTextPixmapFactory(String fileName, boolean imageFile) {
    glyphs = new HashMap<Character,Pixmap>();
    Table table = loadTable(fileName);
    int k=0;
    for (TableRow row : table.rows()) {
      
      // Character.
      String str = row.getString(0);
      if (str.length() != 1)
        continue;
      Character c = new Character(str.charAt(0));
      
      Pixmap pix;
      if (imageFile) {
        // Corresponding image.
        String imageFileName = row.getString(1);
        PImage img = loadImage(imageFileName);
        pix = new Pixmap(img);
      } else {
        // XXX N_ROWS is hardcoded, might hamper backwards-compatibility
        // XXX also: we add an extra empty (blank) column at the end of each letter
        pix = new Pixmap(table.getColumnCount(), N_ROWS);
        for (int i=1; i<table.getColumnCount(); i++) {
          str = row.getString(i).trim();
          int colBits = Integer.decode(str);
          for (int j=0; j<N_ROWS; j++) {
            pix.set(i-1, j, ( (colBits & 1) == 1 ? Pixmap.ON : Pixmap.OFF));
            colBits >>= 1;
          }
        }
      }
      
      // Add to glyphs.
      glyphs.put(c, pix);
      k++;
    }
  }
  
  Pixmap textToPixmap(String text, boolean ltr) {
    if (text.isEmpty())
      return null;
    
    // Convert text to array of chars.
    char[] textData = text.toCharArray();
    if (!ltr)
      textData = reverse(textData);
    
    // First compute the dimensions of the text data.
    int nCols = 0;
    int nRows = 0;
    for (int i=0; i<textData.length; i++) {
      Pixmap glyphPix = glyphs.get(new Character(textData[i]));
      if (glyphPix != null) {
        nCols += glyphPix.nColumns();
        nRows = max(nRows, glyphPix.nRows());
      }
    }
    
    // Create pixmap.
    Pixmap pix = new Pixmap(nCols, nRows);
    int currentX = 0;
    for (int i=0; i<textData.length; i++) {
      Pixmap glyphPix = glyphs.get(new Character(textData[i]));
      if (glyphPix != null) {
        pix.stamp(currentX, 0, glyphPix);
        currentX += glyphPix.nColumns();
      }
    }
    
    return pix;
  }
}


