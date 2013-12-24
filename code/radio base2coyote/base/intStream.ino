// intStream

int _in_int = 0;
byte _in_bits = 0;
byte _in_index = 0;

int _out_int = 0;
byte _out_bits = 0;

byte _in[128];
byte _expected_length;
byte _int_length;

unsigned char intStreamAvailable() {
    
  while ( Serial.available() ) {
    
    byte data = Serial.read();
    
    if ( data & B10000000 ) { // START+LENGTH B1LLLLLLL
       
	_in_int = 0;
        _in_index = 0;
        _expected_length = data & B01111111;
        if ( _expected_length == 0 ) _expected_length = 128; //in 8bit bytes
        //Serial.print("Bytes expected : ");
        //Serial.println(_expected_length);
	_in_bits = 0;
 
    } else { // ANGRYBIT_DATA B0XXXXXXX
       
       _in_int = ((data & B01111111) << _in_bits) | _in_int;
       _in_bits = _in_bits + 7;
	
	while ( _in_bits > 7 ) {
		_in[_in_index] = ((unsigned char)(_in_int & 0xFF));	
		_in_index++;
		_in_bits = _in_bits - 8;
		_in_int = _in_int >> 8;
	}
        
        // CHECK LENGTH
       
        if ( _in_index  >= _expected_length ) {
          
          _int_length = _in_index >> 1;
	  _in_index = 0;

        return  1;
          
        }

       return 0;
    }
    
    
  }
  
  return 0;
  
}

byte intStreamLength() {
  return  _int_length;
}

int intStreamPeek(byte i) {
  i = i << 1;
  return _in[i]|(_in[i+1]<<8);
  
}
