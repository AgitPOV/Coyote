
#include <RF24Network.h>
#include <RF24.h>
#include <SPI.h>
#include "printf.h"

#include <ByteStream.h>
#define RADIO_ENABLED

/*
    Node 00 is the base node.
 Nodes 01-05 are nodes whose parent is the base.
 Node 021 is the second child of node 01.
 Node 0321 is the third child of node 021, an so on.
 The largest node address is 05555, so 3,125 nodes are allowed on a single channel.
 */

#ifdef RADIO_ENABLED
// Set up nRF24L01 radio on SPI bus plus pins 9 & 10 (CE, CSN) 
RF24 radio(9,10);

// Network uses that radio
RF24Network network(radio);
#endif

/*
EACH PACKET IS 30 BYTES AS FOLLOWS
 data 0-1 : radio id (2 bytes)
 data 2 : packet id 0-15 (1 byte)
 data 3 : total length 1-208 (1 byte)
 data 4...29 : LED data by groups of 13 (because 208/13 = 16 packets) (13 x 2 bytes)
 */


ByteStream byteStream = ByteStream();

// Structure of our payload
// Max 32 bytes
struct payload_t
{
  uint8_t packetId; // 0-15
  uint8_t totalLength; // 1-208
  int array[13]; // Led data (16 packets of 13 = 208 max length)
};



void setup() {


  Serial.begin(57600);

  while (!Serial);
  Serial.println("Serial started");

#ifdef RADIO_ENABLED
  printf_begin();


  SPI.begin();
  radio.begin();
  radio.setRetries(15,15);
  //radio.setDataRate(RF24_2MBPS); 


  network.begin(90, 0);  // channel, node
#endif

}

void loop() {
#ifdef RADIO_ENABLED
  // Pump the network regularly
  network.update();
#endif


  while ( byteStream.available()  ) { 



    payload_t payload;
    byte length = byteStream.length();
    payload.packetId = byteStream.in[2];
    payload.totalLength = byteStream.in[3];
    for ( byte i = 0; i < 13;i++) {
      byte j = 4+(i*2);
      payload.array[i] = byteStream.in[j] | (byteStream.in[j+1]<<8);

    }

    int id = byteStream.in[0] | (byteStream.in[1]<<8);
    uint16_t idTest = byteStream.in[0] | (byteStream.in[1]<<8);
    int idTest2 = byteStream.in[1];
    idTest2 = idTest2 << 8;
    idTest2 = idTest2 | byteStream.in[0];

    Serial.print("Radio: ");

    Serial.print(id);
    Serial.println();
    Serial.print("Packet: ");
    Serial.print(payload.packetId);
    Serial.print(" Length: ");
    Serial.println(payload.totalLength);
    Serial.print("Data: ");
    for ( byte b = 0; b < 13; b++ ) {
      Serial.print(payload.array[b]);
      Serial.print(" ");
    }
    Serial.println();
#ifdef RADIO_ENABLED
    RF24NetworkHeader header(/*to node*/ id, 'd');
    bool ok = network.write(header,&payload,sizeof(payload));
    if (ok)
      Serial.println("ok.");
    else
      Serial.println("failed.");
#endif

  }





}




