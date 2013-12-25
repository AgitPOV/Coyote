
#include <RF24Network.h>
#include <RF24.h>
#include <SPI.h>
#include "printf.h"

// Set up nRF24L01 radio on SPI bus plus pins 5 & 6 (CE, CSN) 
RF24 radio(5,6);

// Network uses that radio
RF24Network network(radio);

// Structure of our payload
// Max 32 bytes
struct payload_t
{
  uint8_t offset; // 0-15
  uint8_t totalLength; // 1-208
  int array[13]; // 13 because it is a divider of 208 and 208 is the max length
};


void setupRadio() {
  
  printf_begin();
  
  SPI.begin();
  radio.begin();
  radio.setRetries(5,5);
  radio.setDataRate(RF24_2MBPS); 

 
  network.begin(90, NODE_ID); // channel, node
  
}

void loopRadio() {
  
   // Pump the network regularly
  network.update();
    
    // Is there anything ready for us?
  while ( network.available() )
  {
    // If so, grab it and print it out
    RF24NetworkHeader header;
    payload_t payload;
    network.read(header,&payload,sizeof(payload));
    
    for ( byte i =0 ; i < 13; i++ ){
       povArray[i+payload.offset] = payload.array[i];
    }
     
    povSetArray(povArray,payload.totalLength);
   /*
   if ( payload.type == 0 ) {
     // Copy one to the other
     for ( byte i =0 ; i < payload.size; i++ ){
       radioPovArray[i] = payload.array[i];
     }
     
     povSetArray(radioPovArray,payload.size);
   }
   */
  }  
  
}
