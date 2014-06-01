class Pixmap {
  int nColumns;
  int nRows;
  
  int[] pixels;
  
  static final int ON  = 1;
  static final int OFF = 0;
  
  Pixmap(PImage img) {
    if (img == null) {
      _init(0, 0);
    }
    else {
      _init(img.width, img.height);
      img.filter(THRESHOLD);
      img.loadPixels();
      for (int i=0; i<nPixels(); i++) {
        pixels[i] = ( img.pixels[i] == color(0) ? OFF : ON );
      }
    }
  }
  
  Pixmap(Pixmap copy) {
    _init(copy.nColumns(), copy.nRows());
    for (int i=0; i<nPixels(); i++)
      set(i, copy.get(i));
  }
  
  Pixmap(int nColumns, int nRows) {
    _init(nColumns, nRows);
    clear();
  }
  
  int nColumns() { return nColumns; }
  int nRows() { return nRows; }
  int nPixels() { return pixels.length; }
  
  void clear() {
    for (int i=0; i<nPixels(); i++)
      pixels[i] = OFF;    
  }
  
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
        if (0 <= xc && xc < nColumns() && 0 <= yc && yc < nRows()) {
          set(xc, yc, submap.get(xs, ys));
        }
      }
    }
  }
  
  void stomp(int x, int y, Pixmap submap ) {
     for (int xs=0; xs<submap.nColumns(); xs++) {
      for (int ys=0; ys<submap.nRows(); ys++) {
        int xc = x+xs;
        int yc = y+ys;
        if (0 <= xc && xc < nColumns() && 0 <= yc && yc < nRows()) {
          if ( submap.get(xs, ys) == 1 )   set(xc, yc, 1);
        
        }
      }
    }
    
    
  }
  
  
  int column(int index) {
    return index % nColumns;
  }
  
  int row(int index) {
    return index / nColumns;
  }
  
  void copyFrom(Pixmap pixmap) {
    for (int i=0; i<nPixels(); i++) {
      set(i, pixmap.get(i));
    }
  }
  
  int _indexOf(int x, int y) {
    return y*nColumns + x;
  }
  
  void _init(int nColumns, int nRows) {
    this.nColumns = nColumns;
    this.nRows    = nRows;
    pixels = new int[nColumns * nRows];
  }
}
