/*
Class that manages load and save
 */


class FileManager {

  void open(String fileName,Pixmap pixmap) {
    


    // Should add some error checking here, but I am lazy
   
      XML xml = loadXML(fileName);
      XML root = xml.getChild("Pixmap");

      XML[] rows = root.getChildren("Row");



      for ( int i =0; i < rows.length; i++ ) {
        XML row = rows[i];
        
        
        int id = rows[i].getInt("id");
         int data = rows[i].getInt("data");

         for ( int j = 11 ; j >= 0 ; j-- ) {
         pixmap.set(id, j, data & 1);
         data = data >> 1;
         }
         
      }
    
    println("Opened "+fileName+".");
    
  }



  void save(String fileName, Pixmap pixmap) {
    
    


      if (fileName.length() > 4 ) {
        String extension = fileName.substring(fileName.length()-4);

        if ( extension.equals(".xml") != true ) {
          fileName = fileName+".xml";
        }
      } 
      else {
        fileName = fileName+".xml";
      }


      XML xml;
      xml = new XML("EditPOV");
      XML root = xml.addChild("Pixmap");


      for ( int c =0 ; c <  N_COLUMNS ; c++ ) {
        XML data = root.addChild("Row");

        int compressedRow = 0;
        for ( int r =0 ; r < N_ROWS ; r++) {
          compressedRow = compressedRow << 1;
          compressedRow = compressedRow | (pixmap.get(c, r) == Pixmap.OFF ? Pixmap.OFF : Pixmap.ON);
        }
        data.setInt("data", compressedRow);
        data.setInt("id", c);
      }

      saveXML(xml, fileName);

      println("Saved to "+fileName+".");
    }
  

}

