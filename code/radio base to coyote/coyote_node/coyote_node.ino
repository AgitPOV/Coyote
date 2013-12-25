

/*
 $$$$$$\   $$$$$$\  $$$$$$\ $$$$$$$$\       $$$$$$$\   $$$$$$\  $$\    $$\         $$$$$$\   $$$$$$\ $$\     $$\  $$$$$$\ $$$$$$$$\ $$$$$$$$\ 
 $$  __$$\ $$  __$$\ \_$$  _|\__$$  __|      $$  __$$\ $$  __$$\ $$ |   $$ |       $$  __$$\ $$  __$$\\$$\   $$  |$$  __$$\\__$$  __|$$  _____|
 $$ /  $$ |$$ /  \__|  $$ |     $$ |         $$ |  $$ |$$ /  $$ |$$ |   $$ |       $$ /  \__|$$ /  $$ |\$$\ $$  / $$ /  $$ |  $$ |   $$ |      
 $$$$$$$$ |$$ |$$$$\   $$ |     $$ |         $$$$$$$  |$$ |  $$ |\$$\  $$  |       $$ |      $$ |  $$ | \$$$$  /  $$ |  $$ |  $$ |   $$$$$\    
 $$  __$$ |$$ |\_$$ |  $$ |     $$ |         $$  ____/ $$ |  $$ | \$$\$$  /        $$ |      $$ |  $$ |  \$$  /   $$ |  $$ |  $$ |   $$  __|   
 $$ |  $$ |$$ |  $$ |  $$ |     $$ |         $$ |      $$ |  $$ |  \$$$  /         $$ |  $$\ $$ |  $$ |   $$ |    $$ |  $$ |  $$ |   $$ |      
 $$ |  $$ |\$$$$$$  |$$$$$$\    $$ |         $$ |$$\    $$$$$$  |$$\\$  /$$\       \$$$$$$  | $$$$$$  |   $$ |     $$$$$$  |  $$ |   $$$$$$$$\ 
 \__|  \__| \______/ \______|   \__|         \__|\__|   \______/ \__|\_/ \__|       \______/  \______/    \__|     \______/   \__|   \________|
 Thomas O Fredericks
 2013
 GNU General Public License
*/

/*
VERSION
===========================

0.3 : Forked from previous and added radio

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
 
 PORT D MASK : 0x83 B10000011
 PORT B MASK : 0x07 B00000111
 PORT C MASK : 0x3F B00111111
 

 ARDUINO 
 ATMEGA168     PIN  INTERRUPT
 HALL   PD3           3    1
 
 */
unsigned char ledPins[]={9,10,7,8,A0,A4,A5,A3,A2,A1,1,0};

#define HALL_INTERRUPT 1
#define HALL_PIN 3

#define POVARRAYSIZE 208
int povArray[] = { 1 , 2 , 2 , 2 , 14 , 56 , 64 , 192 , 128 , 256 , 3584 , 2048 , 2048 , 2048 , 2048 , 0 , 0 , 960 , 96 , 16 , 14 , 1 , 1 , 2 , 2 , 2 , 4 , 4 , 12 , 24 , 16 , 96 , 128 , 256 , 256 , 512 , 1024 , 1024 , 1024 , 2048 , 2048 , 2048 , 2048 , 0 , 1024 , 0 , 512 , 448 , 64 , 48 , 8 , 4 , 4 , 2 , 0 , 2 , 2 , 1 , 0 , 1 , 1 , 0 , 0 , 2 , 0 , 0 , 0 , 8 , 0 , 0 , 16 , 32 , 64 , 128 , 0 , 128 , 256 , 512 , 1024 , 0 , 3072 , 2048 , 2048 , 2048 , 1024 , 0 , 0 , 0 , 0 , 0 , 0 , 128 , 192 , 0 , 0 , 32 , 16 , 0 , 0 , 8 , 0 , 0 , 4 , 0 , 0 , 2 , 2 , 0 , 1 , 1 , 0 , 0 , 0 , 0 , 0 , 2 , 0 , 0 , 0 , 0 , 0 , 0 , 8 , 0 , 0 , 16 , 0 , 0 , 32 , 384 , 0 , 1536 , 1024 , 2048 , 2048 , 2048 , 2048 , 1024 , 0 , 512 , 384 , 92 , 6 , 2 , 2 , 1 , 1 , 1 , 0 , 0 , 1 , 0 , 3 , 4 , 4 , 0 , 8 , 0 , 16 , 0 , 32 , 0 , 0 , 0 , 64 , 128 , 0 , 256 , 0 , 512 , 0 , 512 , 0 , 1024 , 0 , 2048 , 2048 , 2048 , 2048 , 2048 , 2048 , 0 , 0 , 0 , 0 , 2048 , 0 , 2048 , 1024 , 1024 , 512 , 240 , 12 , 2 , 2 , 1 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 1 , 2 , 2 , 60 , 32};


void setup() {                

  povSetup();
  povSetArray(povArray,POVARRAYSIZE);

  // A 2s fade out animation  
  unsigned long timeStamp = millis();
  unsigned long microTimeStamp = micros();
  while ( (millis() - timeStamp) < 2000) {

    unsigned long lapsed = (micros() - microTimeStamp); // 0-2000000 

    unsigned long dim = lapsed / 200; // 0-10000
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
  
  setupRadio();
}


void loop() {

  povDisplayCheck();
  loopRadio();

}



