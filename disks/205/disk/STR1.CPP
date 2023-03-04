#include <iostream.h>


int strlenght(char *P) {
	int x;

	for (x= 0; P[x] != '\0'; x++);
	
    return x;
}
 
     
     
int main(void) {
	char wort[80];
	cout << "Bitte Geben sie ein Wort ein: " << endl;
	
	cin >> wort;
	
	
	cout << endl << "Das Wort hat " << strlenght(&wort[0]) << " Zeichen." << endl;
	
	return 0;
	            
}