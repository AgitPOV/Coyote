/*
 * AgitPOV
 * 12-LED POV for Arduino
 * Can display a led array
 * Thomas O Fredericks
 * (c) 2014
 
 VERSION
 ===========================
 0.12:
 Moved a lot of code to povAcme.ino.
 Added an option for continuous display.
 Added an option to set the column width.
 
 0.11:
 Replaced povWaitAndDisplay with povDisplayCheck.
 
 0.1:
 Initial release.
 
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/* DEFINES
=========================== */

/*
POV PIN CONFIGURTATION
==========================
LED ATMEGA168 ARDUINO PIN
13 PD0 0
12 PD1 1
11 PC1 A1
10 PC2 A2
9 PC3 A3
8 PC5 A5
7 PC4 A4
6 PC0 A0
5 PB0 8
4 PD7 7
3 PB2 10
2 PB1 9
PORT D MASK : 0x83 B10000011
PORT B MASK : 0x07 B00000111
PORT C MASK : 0x3F B00111111

ARDUINO
ATMEGA168 PIN INTERRUPT
HALL PD3 3 1
*/
unsigned char povLedPins[]={
  9,10,7,8,A0,A4,A5,A3,A2,A1,1,0};

#define HALL_INTERRUPT 1
#define HALL_PIN 3





volatile boolean povDoIt = false;


int * _povArray;
int _povArraySize;


unsigned long povIntervalColumns = 3300;

int _povColumnWidth = 6;

volatile unsigned long povInterval = 1100;
volatile unsigned long povTimeStamp;

volatile int _povArrayIndex = 0;



void povSetup() {

  // Set up pin 0 - 12 as OUTPUT.
  for (unsigned char k=0;k<12;k++) {
    pinMode(povLedPins[k],OUTPUT);
    //digitalWrite(povLedPins[k],HIGH);
  }

  // initialize HALL with interrupt
  attachInterrupt(HALL_INTERRUPT, hallInterrupt, FALLING);
  pinMode(HALL_PIN, INPUT);
  digitalWrite(HALL_PIN, HIGH);


}


void povSetArray ( int* a, int s) {
  _povArray = a;
  _povArraySize = s;
}

void povSetWidth(int w) {
  
  _povColumnWidth = w;
}



  // TURN OFF ALL LEDS
  // ====================================
void povTurnOffAllLeds() { 
  
  for (unsigned char k=0;k<12;k++) {
    digitalWrite(povLedPins[k],HIGH);
  }
  
}

  // 2s FADE OUT ANIMATION  
  // ================================
void povFadeOutAnimation() {
  unsigned long timeStamp = millis();
  unsigned long microTimeStamp = micros();
  while ( (millis() - timeStamp) < 2000) {

    unsigned long lapsed = (micros() - microTimeStamp); // 0-2000000 

    unsigned long dim = lapsed / 200; // 0-10000
    unsigned long frame = lapsed % 10000; //0-10000

      if ( frame >= dim ) {
      for ( int i=0; i < 12 ; i++ ) digitalWrite( povLedPins[i],  LOW ); //ON
    } 
    else {
      for ( int i=0; i < 12 ; i++ ) digitalWrite( povLedPins[i],  HIGH ); //OFF
    }
  }  
}


void povDisplay(boolean wait) { 
  
  if ( wait ) {
    if ( povDoIt == false ) return;
  }
  povDoIt = false;

   povIntervalColumns = povInterval  * _povColumnWidth ; 
   povIntervalColumns = min(povIntervalColumns,6600);
  
  _povArrayIndex = _povArraySize-1;
  while ( _povArrayIndex >= 0 ) {
    int b = _povArray[_povArrayIndex];
    
    for (int k=0; k<12; k++) digitalWrite(povLedPins[k], bitRead(~b,k)); 
    #ifdef COYOTE_SLOW_DEBUG
      delay(100);
    #else
      delayMicroseconds(povIntervalColumns); //delayMicroseconds(POV_US_BETWEEN_COLUMNS);
    #endif
    
    _povArrayIndex--;
  }

  
}



void hallInterrupt() {

  povDoIt = true;
  _povArrayIndex = _povArraySize-1;
  povInterval = max((millis() - povTimeStamp),2)-1;
  povTimeStamp = millis() ;

}


