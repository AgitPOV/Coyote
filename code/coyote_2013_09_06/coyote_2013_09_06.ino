

/*
 $$$$$$\   $$$$$$\  $$$$$$\ $$$$$$$$\       $$$$$$$\   $$$$$$\  $$\    $$\         $$$$$$\   $$$$$$\ $$\     $$\  $$$$$$\ $$$$$$$$\ $$$$$$$$\ 
 $$  __$$\ $$  __$$\ \_$$  _|\__$$  __|      $$  __$$\ $$  __$$\ $$ |   $$ |       $$  __$$\ $$  __$$\\$$\   $$  |$$  __$$\\__$$  __|$$  _____|
 $$ /  $$ |$$ /  \__|  $$ |     $$ |         $$ |  $$ |$$ /  $$ |$$ |   $$ |       $$ /  \__|$$ /  $$ |\$$\ $$  / $$ /  $$ |  $$ |   $$ |      
 $$$$$$$$ |$$ |$$$$\   $$ |     $$ |         $$$$$$$  |$$ |  $$ |\$$\  $$  |       $$ |      $$ |  $$ | \$$$$  /  $$ |  $$ |  $$ |   $$$$$\    
 $$  __$$ |$$ |\_$$ |  $$ |     $$ |         $$  ____/ $$ |  $$ | \$$\$$  /        $$ |      $$ |  $$ |  \$$  /   $$ |  $$ |  $$ |   $$  __|   
 $$ |  $$ |$$ |  $$ |  $$ |     $$ |         $$ |      $$ |  $$ |  \$$$  /         $$ |  $$\ $$ |  $$ |   $$ |    $$ |  $$ |  $$ |   $$ |      
 $$ |  $$ |\$$$$$$  |$$$$$$\    $$ |         $$ |$$\    $$$$$$  |$$\\$  /$$\       \$$$$$$  | $$$$$$  |   $$ |     $$$$$$  |  $$ |   $$$$$$$$\ 
 \__|  \__| \______/ \______|   \__|         \__|\__|   \______/ \__|\_/ \__|       \______/  \______/    \__|     \______/   \__|   \________|
 
 */


/*  
 
 POV PIN CONFIGURTATION
 ==========================
 
 LED    ATMEGA168     ARDUINO PIN
 13     PD0           0
 12     PD1           1
 11     PC1           A1
 10     PC2           A2
 9      PC3           A3
 8      PC5           A5
 7      PC4           A4
 6      PC0           A0
 5      PB0           8
 4      PD7           7
 3      PB2           10
 2      PB1           9
 
 ARDUINO 
 ATMEGA168     PIN  INTERRUPT
 HALL   PD3           3    1
 
 */
unsigned char ledPins[]={
  9,10,7,8,A0,A4,A5,A3,A2,A1,1,0};

#define HALL_INTERRUPT 1
#define HALL_PIN 3





void setup() {                

  povSetup();
  povSetMessage("COYOTE");

  // A 3s fade out animation  
  unsigned long timeStamp = millis();
  unsigned long microTimeStamp = micros();
  while ( (millis() - timeStamp) < 3000) {

    unsigned long lapsed = (micros() - microTimeStamp); // 0-3000000 

    unsigned long dim = lapsed / 300; // 0-10000
    unsigned long frame = lapsed % 10000; //0-10000

      if ( frame >= dim ) {
      for ( int i=0; i < 12 ; i++ ) digitalWrite( ledPins[i],  LOW ); //ON
    } 
    else {
      for ( int i=0; i < 12 ; i++ ) digitalWrite( ledPins[i],  HIGH ); //OFF
    }



  }

  // Turn LEDS off
  for (unsigned char k=0;k<12;k++) {
    digitalWrite(ledPins[k],HIGH);
  }
}


void loop() {

  povWaitAndDisplay();

}



