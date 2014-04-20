class Pixmap {
  int nColumns;
  int nRows;
  
  int[] pixels;
  
  static final int ON  = 1;
  static final int OFF = 0;
  
  Pixmap(PImage img) {
    nColumns = img.width;
    nRows    = img.height;
    img.filter(THRESHOLD);
    img.loadPixels();
    pixels = new int[nColumns * nRows];
    for (int i=0; i<nPixels(); i++)
      pixels[i] = ( img.pixels[i] == 0 ? ON : OFF );
  }
  
  Pixmap(int nColumns, int nRows) {
    this.nColumns = nColumns;
    this.nRows    = nRows;
    pixels = new int[nColumns * nRows];
    for (int i=0; i<nPixels(); i++)
      pixels[i] = OFF;
  }
  
  int nColumns() { return nColumns; }
  int nRows() { return nRows; }
  int nPixels() { return pixels.length; }
  
  void set(int i, int val) {
    pixels[i] = val;    
  }

  void set(int x, int y, int val) {
    set(_indexOf(x, y), val);
  }
  
  int get(int x, int y) {
    return get(_indexOf(x, y));
  }
  
  int get(int i) {
    return pixels[i];    
  }

  void toggle(int i) {
    set(i, get(i) == ON ? OFF : ON);    
  }
  
  void toggle(int x, int y) {
    toggle(_indexOf(x, y));
  }
  
  /// Inserts pixmap at position (x, y).
  void stamp(int x, int y, Pixmap submap) {
    for (int xs=0; xs<submap.nColumns(); xs++) {
      for (int ys=0; ys<submap.nRows(); ys++) {
        int xc = x+xs;
        int yc = y+ys;
        if (0 <= xc && xc < nColumns() && 0 <= yc && yc < nRows())
          set(x+xs, y+ys, submap.get(xs, ys));
      }
    }
  }
  
  int _indexOf(int x, int y) {
    return y*nColumns + x;
  }
  
  int column(int index) {
    return index % nColumns;
  }
  
  int row(int index) {
    return index / nRows;
  }
}
