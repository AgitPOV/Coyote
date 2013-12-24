
#include <RF24Network.h>
#include <RF24.h>
#include <SPI.h>
#include "printf.h"

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


uint8_t dataSize;
uint8_t dataIndex;
int data[16];

struct payload_t
{
  uint8_t size;
  uint8_t type;
  int array[15];
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

 
  while ( intStreamAvailable() ) { 

    Serial.print("Sending... ");
     for ( byte b = 0; b < intStreamLength(); b++ ) {
      Serial.print(intStreamPeek(b));
      Serial.print(" ");
    }
    Serial.println();
    
     payload_t payload;
     payload.size = intStreamLength();
     payload.type = 0;
     
     for ( uint8_t i = 0; i < 15;i++) {
       payload.array[i] = intStreamPeek(i+1);
     }
     
     RF24NetworkHeader header(/*to node*/ intStreamPeek(0));
      bool ok = network.write(header,&payload,sizeof(payload));
       if (ok)
      Serial.println("ok.");
    else
      Serial.println("failed.");
     
    
  }
  

     

  
}



