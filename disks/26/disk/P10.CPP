#include <iostream.h>               

#include <fstream.h>
#include <time.h>
#include <stdlib.h>
#include <stdio.h>

int main(void)
{
	ofstream dateiausgeben;
	ifstream dateieinlesen;
	int eingabe[10];
	int ausgabe[1000];
	int i=0;
	char datei[80];
	cout << "Bitte datei angeben die sinnlos mit zahlen gefüllt werden soll: ";
	cin >> datei;
	srand ((unsigned) time(NULL));
	for (i=0;i<10;i++) {
		eingabe[i]=rand()%100;
	}
	dateiausgeben.open(datei, ios::binary | ios::app);
	for (i=0;i<10;i++) {
		dateiausgeben << eingabe[i] << "\n";
		if (dateiausgeben.fail()) {
			cout << "da ischt was schief gelaufen beim schreiben" <<endl;
			break;
		}
	}
	dateiausgeben.close();

	dateieinlesen.open(datei, ios::binary);
	for (i=0;!dateieinlesen.eof() && i<1000;i++) {
		dateieinlesen >> ausgabe[i];
		if (dateieinlesen.fail()) {
			cout << "da ischt was schief gelaufen beim lesen" <<endl;
			break;
		}
	}
	dateieinlesen.close();
		
	for (i=0;i<1000;i++) {
		cout << ausgabe[i] << endl;
	}
	return 0;
}
