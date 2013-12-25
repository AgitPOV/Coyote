
#include <RF24Network.h>
#include <RF24.h>
#include <SPI.h>
#include "printf.h"

#include <AStream.h>

/*
    Node 00 is the base node.
    Nodes 01-05 are nodes whose parent is the base.
    Node 021 is the second child of node 01.
    Node 0321 is the third child of node 021, an so on.
    The largest node address is 05555, so 3,125 nodes are allowed on a single channel.
*/

// Set up nRF24L01 radio on SPI bus plus pins 9 & 10 (CE, CSN) 
RF24 radio(9,10);

// Network uses that radio
RF24Network network(radio);

// data 0 : radio id 
// data 1 : offset 0-15
// data 2 : totalLength 1-208
// data 3...15 : LED data by groups of 13 because it is a divider of 208 and 208 is the max length
int data[16];

// Warning this might change
AStream intStream = AStream(data,13,sizeof(int));

// Structure of our payload
// Max 32 bytes
struct payload_t
{
  uint8_t offset; // 0-15
  uint8_t totalLength; // 1-208
  int array[13]; // 13 because it is a divider of 208 and 208 is the max length
};
  


void setup() {


  Serial.begin(57600);

  printf_begin();

  SPI.begin();
  radio.begin();
  radio.setRetries(15,15);
  radio.setDataRate(RF24_2MBPS); 


  network.begin(90, 0);  // channel, node

}

void loop() {

  // Pump the network regularly
  network.update();

 
  while ( intStream.available()  ) { 

    
    
     payload_t payload;
     byte length = intStream.length();
     payload.offset = data[1];
     payload.totalLength = data[2];
     for ( byte i = 3; i < length;i++) {
       payload.array[i-3] = data[i];
     }
     
     Serial.print("Radioing: ");
     Serial.println(data[0]);
     Serial.print("Offset: ");
     Serial.print(payload.offset);
     Serial.print(" TotalLength: ");
     Serial.println(payload.totalLength);
     Serial.print("Data: ");
     for ( byte b = 0; b < 13; b++ ) {
      Serial.print(payload.array[b]);
      Serial.print(" ");
    }
    Serial.println();
     
     RF24NetworkHeader header(/*to node*/ data[0]);
      bool ok = network.write(header,&payload,sizeof(payload));
       if (ok)
      Serial.println("ok.");
    else
      Serial.println("failed.");
     
    
  }
  

     

  
}



