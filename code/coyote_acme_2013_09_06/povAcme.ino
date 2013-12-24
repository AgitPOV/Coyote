/*
 * AgitPOV
 * 12-LED POV for Arduino
 * Can display a led array
 * Thomas O Fredericks
 * (c) 2013
 
 VERSION
 ===========================
 0.11 for COYOTE
 
 CHANGES
 ===========================
 0.11:
 Replaced povWaitAndDisplay with ipovDisplayCheck
 
 0.1:
 Initial release
 
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

volatile boolean povDoIt = false;


int * _povArray;
int _povArraySize;


unsigned long povIntervalColumns = 3300;


volatile unsigned long povInterval = 1100;
volatile unsigned long povTimeStamp;



void povSetup() {

  // Set up pin 0 - 12 as OUTPUT.
  for (unsigned char k=0;k<12;k++) {
    pinMode(ledPins[k],OUTPUT);
    //digitalWrite(ledPins[k],HIGH);
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


void povDisplay() { 


  for (int i = _povArraySize-1; i>=0; i--)
  {

    int b = _povArray[i];

    for (int k=0; k<12; k++) digitalWrite(ledPins[k], bitRead(~b,k));
    //delay(100);
    delayMicroseconds(povIntervalColumns); //delayMicroseconds(POV_US_BETWEEN_COLUMNS);

  }
  for (int k=0; k<12; k++) digitalWrite(ledPins[k], 1);
}


void povDisplayCheck() {

  // Wait for hall then display
  if ( povDoIt )  {

    povIntervalColumns = povInterval  * 30 / 10 ; //povIntervalColumns = interval / 10 * 33 ;


    povIntervalColumns = min(povIntervalColumns,6600);
    // povIntervalLetters = min(povIntervalLetters,9000);
    povDisplay();   
    povDoIt = false;
  }

}

void hallInterrupt() {

  povDoIt = true;
  povInterval = max((millis() - povTimeStamp),2)-1;
  povTimeStamp = millis() ;

}


