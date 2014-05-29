class WheelDisplay {
  
  void draw(Pixmap pixmap, float x, float y, float innerRadius, float outsideRadius) {
    
    float sliceRads = TWO_PI / pixmap.nColumns;
    float sliceHeight = (outsideRadius-innerRadius) / pixmap.nRows;
    
    float ledHeight = sliceHeight/2;
    
    float ledWidthMax = TWO_PI * outsideRadius / pixmap.nColumns;
    float ledWidthMin = TWO_PI * innerRadius / pixmap.nColumns;
    
    pushStyle();
    
    
    
    
    pushMatrix();
    translate(x,y);
   
    stroke(COLOR_EDITOR_STROKE);
    noFill();
    ellipseMode(RADIUS);
    ellipse(0,0,outsideRadius,outsideRadius);
    ellipse(0,0,innerRadius-sliceHeight,innerRadius-sliceHeight);
    
    noStroke();
    rectMode(CENTER);
    
    rotate(-0.9);
    for ( int column = 0; column <  pixmap.nColumns; column++ ) {
      
      pushMatrix();
      translate(innerRadius,0);
      
     for ( int row = pixmap.nRows-1; row >= 0 ; row-- ) {
       
       if ( pixmap.get(column,row) > 0) fill(255,0,0);
       else fill(COLOR_EDITOR_OFF);
 
       
       
       rect(0,0,ledHeight, map(row, 0, pixmap.nRows-1, ledWidthMin, ledWidthMax));
       
       translate(sliceHeight,0);
     }
      popMatrix();
      rotate(sliceRads);
    }
    popMatrix();
    
    
    popStyle();
  }
  
  
  
}
