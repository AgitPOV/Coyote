/*
 * AgitPOV
 * 12-LED POV for Arduino
 * Can display both latin and arabic letters.
 *
 * (c) 2011-2012
 
 VERSION
 2.1 for COYOTE
 
 CHANGES
 2.1 : 
 changed ledPins to ledPins
 
 2.0 : 
 includes Pinky board and interruption
 
 
 Thomas O Fredericks
 Alan Kwok
 
 *       Alexandre Castonguay
 *       Sofian Audry
 *       Jean-Pascal Bellemare
 * (c) 2013, Changes: 7 leds to 12 and 5 to 7
 *		 Daniel Felipe Valencia
 *		 dfvalen0223@gmail.com
 * (c) 2013, Changes: added new pinout for 12 leds
 *               Andre Girard
 *               andre@andre-girard.com 
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

#include <avr/pgmspace.h>
#include <string.h>


#ifndef POV_USE_ARABIC
#define POV_USE_LATIN
#endif




/*********************************************** LED MAPPING

Pinky LED : ATMEGA168 : Arduino
LED0-LED5 : PB0-PB5 : 8,9,10,11,12,13
LED6-LED11 : PC0-PC5 : AN0, AN1, AN2, AN3, AN4, AN5

PINKY
unsigned char ledPins[]={8,9,10,11,12,13,A0,A1,A2,A3,A4,A5};
POV
unsigned char ledPins[]={18,19,4,5,6,7,8,9,10,11,12,13};

*/




/*********************************************** INTERRUPT MAPPING

what : interrupt : ATMEGA168 : Arduino
hall : 0 : PD2 : 2
 
PINKY
#define HALL_INTERRUPT 0
#define HALL_PIN 2
 
*/




volatile boolean povDoIt = false;




// Letter width. since i have 12 LED, then each letter would look like a 12 x 7 matrix
#define POV_WIDTH 7
#define POV_MAX_MESSAGE_LENGTH 26
//#define POV_US_BETWEEN_LETTERS 4500
//#define POV_US_BETWEEN_COLUMNS 3300




int16_t povMessage[POV_MAX_MESSAGE_LENGTH];
unsigned char povMessageLength;

unsigned long povIntervalColumns = 3300;
unsigned long povIntervalLetters = 4500;


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


// LATIN PRIVATE
#ifdef POV_USE_LATIN
prog_uint16_t PROGMEM POV_FONT [][7] =
//uint8_t LATIN_CHARS [][5] =
{
  {
    0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000  }
  , //space
  {
    0x000, 0x000, 0xcff, 0xcff, 0xcff, 0x000, 0x000  }
  , //!
  {
    0x0f0, 0x0f0, 0xfff, 0xfff, 0xfff, 0x0f0, 0x0f0  }
  , //+
  {
    0xf00, 0xf00, 0xf00, 0x000, 0x000, 0x000, 0x000  }
  , //.
  {
    0xc00, 0x600, 0x180, 0x060, 0x018, 0x006, 0x003  }
  , ///
  {
    0x198, 0x198, 0x198, 0x198, 0x198, 0x198, 0x198  }
  , //
  {
    0x01c, 0x007, 0xdc3, 0xdc3, 0x0c3, 0x066, 0x03c  }
  , //?
  {
    0xf80, 0x1f0, 0x19f, 0x183, 0x19f, 0x1f0, 0xf80  }
  , //a
  {
    0xfff, 0xfff, 0xc63, 0xc63, 0xc63, 0xc63, 0x79e  }
  , //b
  {
    0x1f8, 0x7fe, 0x606, 0xc03, 0xc03, 0xf0f, 0x39c  }
  , //c
  {
    0xfff, 0xfff, 0xc03, 0xc03, 0xc03, 0x606, 0x3fc  }
  , //d
  {
    0xfff, 0xfff, 0xe67, 0xe67, 0xe67, 0xe07, 0xe07  }
  , //e
  {
    0xfff, 0xfff, 0x067, 0x067, 0x067, 0x007, 0x007  }
  , //f
  {
    0x1f8, 0x7fe, 0xc03, 0xcc3, 0xcc3, 0xfcf, 0x7cc  }
  , //g
  {
    0xfff, 0xfff, 0x060, 0x060, 0x060, 0xfff, 0xfff  }
  , //h
  {
    0xe07, 0xe07, 0xfff, 0xfff, 0xfff, 0xe07, 0xe07  }
  , //i
  {
    0x3c0, 0xfc0, 0xc07, 0xf07, 0x3ff, 0x0ff, 0x007  }
  , //j
  {
    0xfff, 0xfff, 0x0f0, 0x1f8, 0x79e, 0xe07, 0xc23  }
  , //k
  {
    0xfff, 0xfff, 0xe00, 0xe00, 0xe00, 0xe00, 0xe00  }
  , //l
  {
    0xfff, 0xfff, 0x01e, 0x070, 0x01e, 0xfff, 0xfff  }
  , //m
  {
    0xfff, 0xfff, 0x03c, 0x0e0, 0x380, 0xfff, 0xfff  }
  , //n
  {
    0x3fc, 0x3fc, 0xe07, 0xe07, 0xe07, 0x3fc, 0x3fc  }
  , //o
  {
    0xfff, 0xfff, 0x0c3, 0x0c3, 0x0c3, 0x0c3, 0x07e  }
  , //p
  {
    0x07e, 0x0c3, 0x0e3, 0x3e3, 0x3c3, 0xec3, 0xc7e  }
  , //q
  {
    0xfff, 0xfff, 0x0c3, 0x1c3, 0x3c3, 0x6ff, 0xc7e  }
  , //r
  {
    0x01c, 0xe77, 0xe77, 0xe77, 0xe77, 0xe77, 0x3c0  }
  , //s
  {
    0x007, 0x007, 0xfff, 0xfff, 0xfff, 0x007, 0x007  }
  , //t
  {
    0x3ff, 0x7ff, 0xe00, 0xe00, 0xe00, 0x7ff, 0x3ff  }
  , //u
  {
    0x00f, 0x0f8, 0x7e0, 0xe00, 0x7e0, 0x0f8, 0x01f  }
  , //v
  {
    0x01f, 0x0f0, 0xf80, 0x0ff, 0xf80, 0x0f0, 0x01f  }
  , //w
  {
    0xe07, 0x30c, 0x198, 0x0f0, 0x198, 0x30c, 0xe07  }
  , //x
  {
    0x00f, 0x038, 0x060, 0xfe0, 0x060, 0x038, 0x00f  }
  , //y
  {
    0xe03, 0xf03, 0xf83, 0xcc3, 0xc63, 0xc3f, 0xc0f  } //z

};

void povSetMessage( const char* str) {
  
  povMessageLength = strlen(str);
  povMessageLength = min(povMessageLength, POV_MAX_MESSAGE_LENGTH);
  
  for (int i=0; i<povMessageLength; i++) {
    char c = str[i];
    int16_t a;
    if ('a' <= c && c <= 'z')
      c += 26; // uppercase
    if ('A' <= c && c <= 'Z')
      a = (c - 'A') + 7;
    else {
      switch (c) {
      case ' ': 
        a = 0; 
        break;
      case '!': 
        a = 1; 
        break;
      case '+': 
        a = 2; 
        break;
      case '.': 
        a = 3; 
        break;
      case '/': 
        a = 4; 
        break;
      case '=': 
        a = 5; 
        break;
      case '?': 
        a = 6; 
        break;
      default : 
        a = 0; 
        break;
      }
    }

    povMessage[i] = a;
  }
}



#endif

// povDisplayRaw(LATIN_CHARS, alphaMsg, strlen(msg), 4500, 3300);

//method of displaying the letters. displaying each column (one hex number) of the letter one by one through PORTD. then after a letter, it puts a space in between and move onto the next letter. until however long of the String you wish to display.
//each letter is first turned into ASCII integer, then minus 65. It would then be the row of the letter from the library above. (ex. A is 65 in ASCII, but row 0 in my library)
// furthermore, because of the way i made the hardware, it displays each letter starting from the back of the sentence, and each letter from the right most column.
void povDisplay() { 
  
  
  for (int i = povMessageLength-1; i>=0; i--)
  {
    for (int j = (POV_WIDTH-1); j>=0; j--)
    {
      unsigned int b = pgm_read_word_near(&POV_FONT[povMessage[i]][j]);//message[(int)POVstring[i]-0][j];
//      byte b = fontSet[message[i]][j];
      for (int k=0; k<12; k++) digitalWrite(ledPins[k], bitRead(~b,k));
        delayMicroseconds(povIntervalColumns); //delayMicroseconds(POV_US_BETWEEN_COLUMNS);
    }
    for (int k=0; k<12; k++) digitalWrite(ledPins[k], 1);
      delayMicroseconds(povIntervalLetters); //delayMicroseconds(POV_US_BETWEEN_LETTERS);
      
     
  }
}


void povWaitAndDisplay() {

 // Wait for hall then display
  if ( povDoIt )  {
    
      povIntervalColumns = povInterval  * 30 / 10 ; //povIntervalColumns = interval / 10 * 33 ;
      povIntervalLetters = povInterval  * 43 / 10; //povIntervalLetters = interval / 10 * 45;
   
   
      povIntervalColumns = min(povIntervalColumns,6600);
     povIntervalLetters = min(povIntervalLetters,9000);
     povDisplay();   
     povDoIt = false;
  }
 
 
  
  
}

void hallInterrupt() {
  
  povDoIt = true;
  povInterval = max((millis() - povTimeStamp),2)-1;
  povTimeStamp = millis() ;
  
}


