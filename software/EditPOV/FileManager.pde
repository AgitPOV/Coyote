/*
Class that manages load and save
 */

import java.awt.*;


class FileManager {

  void open(Pixmap pixmap) {
    
   

    String fileName = openDialog("Save XML", FileDialog.LOAD);

    // Should add some error checking here, but I am lazy
    if ( fileName != null ) {
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
    }
  }



  void save(Pixmap pixmap) {
    
   

    String fileName = openDialog("Save XML", FileDialog.SAVE);



    if ( fileName != null ) {

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

  private String openDialog(String title, int mode) {

    FileDialog fd = new FileDialog(new Frame(), title, FileDialog.LOAD);
    fd.setFile("EditPOV.xml");
    fd.setDirectory("");
    fd.show();
    String file = fd.getFile();
    if ( file == null ) return null;

    return fd.getDirectory()+fd.getFile();
  }
}

