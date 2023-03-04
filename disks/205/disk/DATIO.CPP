#include <iostream.h>
#include <fstream.h>
          

// Funktion um Zahlen aus einem Array auszugenen
// int *zahl: Pointer auf erstes Element von Array
// laenge: Laenge des Array              
void showNumbers(int *zahl, int laenge) {
	int x;
	cout << endl;
	for (x=0; x < laenge; x++) {
		cout << zahl[x] << endl;
	}
}               
                                
                                
// Methode um Zahlen einzulesen
// int *zahl: Pointer auf erstes Element von Array
// anzahl: (Verseht sich von selbst)
void getNumbers(int *zahl, int anzahl) {
                    
    cout << endl << "Sie muessen nun " << anzahl << " Zahlen eingeben:" << endl;
    
	int x;
    
	for (x=0; x < anzahl; x++) {
		cout << "Geben sie die " << (x + 1) << " Zahl ein:";
		cin >> zahl[x];
	}
}

// Methode um Zahlen von einer Datei in einen Array zu lesen
// char filename[]: Name der Datei
// int *zahl: Pointer zu erstem Element of Array
// int laenge: laenge des Arrays
void readArrFromFile(char filename[], int *zahl, int laenge) {
   ifstream Lesezugriff;
   Lesezugriff.open(filename, ios::binary);
   if (Lesezugriff.fail()) {
      cout << "Lesezugriff zur Datei " << filename << " fehlgeschlagen!" << endl;
   }
   else {
   	 int x;
   	 for (x= 0; x < laenge; x++) {
   	   Lesezugriff >> zahl[x];
   	   // Falls ende of file: 
   	   if (Lesezugriff.eof())  x = laenge; 
     }
   }
   Lesezugriff.close();                                                   
}                                                 
 
// Methode um Array in datei zu schreiben
// filename[]: Name der Datei,
// int *zahl: Pointer zu erstem Element of Array
// laenge: Laenge des Arrays                                                   
void printArrToFile(char filename[], int *zahl, int laenge) {
	ofstream Schreibzugriff;
	Schreibzugriff.open(filename, ios::binary);
   if (Schreibzugriff.fail()) {
      cout << "Schreibzugriff zur Datei " << filename << " fehlgeschlagen!" << endl;
   }
   else {	   
	 int x;
	 for (x= 0; x < laenge; x++) {
		Schreibzugriff << zahl[x] << "\n";	
		
	 }             
   }
   Schreibzugriff.close();
}         


void readFileandPrint(char filename[]) {
   ifstream Lesezugriff;
   Lesezugriff.open(filename, ios::binary);
   if (Lesezugriff.fail()) {
      cout << "Lesezugriff zur Datei " << filename << " fehlgeschlagen!" << endl;
   }
   else {
   	 int x;
   	 while(!Lesezugriff.eof()) {
   	   
   	   Lesezugriff >> x;
   	   cout << x << ", "; 
     }
   }
   Lesezugriff.close();                                                   
} 


int main(void) {
    
    // 10 Zahlen
	int zahlen[10];
	
	// Dateiname
	char dateiname[12];
	
	cout << "Geben sie einen Dateinamen ein:";
	cin >> dateiname;
	
    getNumbers(&zahlen[0], 10);
    
    printArrToFile(dateiname, &zahlen[0], 10);
    
    int zahlen2[10];
    
    readArrFromFile(dateiname, &zahlen2[0], 10); 
    
    showNumbers(&zahlen2[0], 10);
    readFileandPrint(dateiname);

	return 0;
}