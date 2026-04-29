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

 int16_t AdrStart = 0x8000; // some text
 int16_t AdrIncrimented = 0; // some text
    
 void main (  )   {       
	AdrIncrimented = AdrStart;
 	
	MEM[AdrIncrimented] = H;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = E;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = L;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = L;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = O;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = space;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = W;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = O;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = R;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = L;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = D;
 	AdrIncrimented++;
	MEM[AdrIncrimented] = exclamation;
 	AdrIncrimented++;

  }    
    