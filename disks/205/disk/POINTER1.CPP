#include <iostream.h>





void tauschePointer(int *pA,int *pB) {
    
    int C;
	C = *pA;
	*pA = *pB;
	*pB = C;

}

void plusDrei(int x) {
	x += 3;
	cout << x << endl;

}            

void plusDrei(int *pX) {
	*pX += 3;
	cout << *pX << endl;
	
}

void main(void) {

    int zahl = 20;
    int zahl2 = 30;
    
    // Zahlen ausgeben
    cout << "Zahl = " << zahl << ", Zahl2 = " << zahl2 << endl; 
    
    // Plus 3 ohne Pointer
    cout << "Zahlen plus 3" << endl;             
    plusDrei(zahl);
    plusDrei(zahl2);
    cout << "Zahl = " << zahl << endl;
    cout << "Zahl2 = " << zahl2 << endl;
    
    // Plus 3 mit Pointer    
    cout << "Pointer plus 3" << endl;           
    plusDrei(&zahl);
    plusDrei(&zahl2);
    cout << "Zahl = " << zahl << endl;
    cout << "Zahl2 = " << zahl2 << endl;
    
    // pointer Tauschen    
    cout << "Zahlen werden vertauscht:" << endl;
    tauschePointer(&zahl, &zahl2);

    cout << "Zahl = " << zahl << endl;
    cout << "Zahl2 = " << zahl2 << endl;
}