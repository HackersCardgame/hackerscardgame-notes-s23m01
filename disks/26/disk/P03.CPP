#include <iostream.h>

int main(void)

{   
	int a;
	int b[5];
	int c=5;
	int d;
	int e;
	for (a=0;a<c;a++) {                                    //Schleife zum einlesen der zu sortierenden Zahlen
		cout << "Bitte " << a+1 <<". Zahl eingeben: ";
		cin >> b[a];
	}
	for (a=0;a<c;a++) {										//Schleife zum sortieren der Zahlen
		for (d=0;d<c;d++) {
			if (b[a]<b[d]) {
							e=b[a];
							b[a]=b[d];
							b[d]=e;
			}
		}
	}				
	for (a=0;a<c;a++) {										//Schleife zum ausgeben der Zahlen
		cout << "Die " << a+1 <<". Zahl ist " << b[a] << endl;
    }

    return 0;

}