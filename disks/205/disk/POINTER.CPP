#include <iostream.h>
#include <dos.h>


int main(void) {

 
    char far *E = (char far *) _MK_FP(0x40,0);
    int i;
    unsigned Z;
    
    for (i=0; i < 60; i++, E++) {
    	Z = *E;
    	
    	cout << hex << Z << "\t";
    	
    	if (!i%16) cout << endl;
    }
	return 0;
}