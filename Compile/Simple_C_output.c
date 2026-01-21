  # include  < stdint.h >    
  # include  < stdio.h >    
    
  //  # define l_l 5   
  # define g  - 4   
  # define r 2   
  # define h 30   
  //  # define s 2000   
  // int8_t l [ 5 ]  ;    
  // int8_t l2 [ 10 ]   ;    
  // int8_t listen [ l_l ]  ;    
    
  // 8bit values:   
 int8_t l  =  2 ;   //  some text   
 int8_t m  =  30 ;    
 int8_t n  =  0 ;    
    
  // 16bit values:   
 int16_t x = 100 ;   //  some text   
 int16_t y  =  25 ;    
 int16_t z  =   - 10 ;    
    
  // int16_t lang  =  8000 ;    
    
 void main (  )   {      
   z  =  x  +  y ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   z += y ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   x  =  y  -  z ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   x  -=  z ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   y ++  ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   x --  ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   z --  ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   y  =  y  <<  l ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   y  =  y  >>  r ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   y  =  y  <<  r ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   y  =  y  >>  m ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   z = g ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   z *= g ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
   z  /=  g ;    
   printf ( "%d  =  %x  ,  %d  =  %x  ,  %d  =  %x\n" ,  x ,  x ,  y ,  y ,  z ,  z )  ;    
      
  }    
