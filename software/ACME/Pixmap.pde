class Pixmap {
  int nColumns;
  int nRows;
  
  int[] pixels;
  
  static final int ON  = 1;
  static final int OFF = 0;
  
  Pixmap(int nColumns, int nRows) {
    this.nColumns = nColumns;
    this.nRows    = nRows;
    pixels = new int[nColumns * nRows];
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
  
  int _indexOf(int x, int y) {
    return y*nColumns + x;
  }
}
