  # include  < stdint.h >    
  # include  < stdio.h >    
    
 char H = 72;
 char E = 69;
 char L = 76;
 char O = 79;
 char space = 32;
 char W = 87;
 char R = 82;
 char D = 68;
 char exclamation = 33;

 


 int8_t length = 15;
 int8_t count = 0;
 int8_t zero = 0;
 int8_t attribute = 15; // should be white text 

 int16_t AdrStart = 0x8000; // some text
 int16_t AdrIncrimented = 0; // some text
 int16_t Two = 2; // some text
    
 void main (  )   {       
	AdrIncrimented = AdrStart;
 	count = zero;
	while (count < length) {
		MEM[AdrIncrimented] = attribute;
		AdrIncrimented ++;
		MEM[AdrIncrimented] = zero;
		AdrIncrimented ++;
		count++;
	}
	
	AdrIncrimented = AdrStart;
	AdrIncrimented ++;

	MEM[AdrIncrimented] = H;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = E;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = L;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = L;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = O;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = space;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = W;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = O;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = R;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = L;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = D;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = exclamation;
	
	count = zero;
	while (count < length) {
        
	}
  }    
    