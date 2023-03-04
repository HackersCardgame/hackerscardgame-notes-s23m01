// p20.cpp : Definiert den Einsprungpunkt für die Konsolenanwendung.
//

#include "stdafx.h"
#include <iostream.h>

int main(void)
{
	class konti
	{
	public:
		void einzahlen(double a);
		double abfragen();
		void abheben(double b);
		konti();
		~konti();
	private:
		char inhaber[80];
		int kontonummer;
		double kontostand;
		void eroeffnen(int nummer);
	}

	void konti::einzahlen(double a) {
		if a > 0 {
			kontostand+=a;
			cout << "Hallo " << inhaber << " Ihr Kontostand ist jetzt " << kontostand << endl;
		}
		else {
			cout << "Sie koennen keinen negativen Betrag einzahlen!" <<endl;
		}

	double konti::abfragen() {
		return kontostand;
	}

	void konti::abheben(double b) {
		if ((b >= 0) && (kontostand > (kontostand-b)) {
			if (b >= 0) {
				cout << "Sie koennen keinen Negativen Betrag abheben!"
			}
			else {
				cout << "Sie duerfen Ihr Konto nicht ueberziehen" << endl;
				cout << "Maximal verfuegbarer Betrag: " << kontostand << endl;
			}
		}
		else {
			kontostand-=b;
			cout << "Ihr aktueller Kontostand ist: " << kontostand;
		}
	}

	void konti::eroeffnen(char c[80],int einlage) {
		inhaber = c;
		kontostand = einlage;
	}

	konto::konto(void) {
		char name[80];
		double startkapital;
		cout << "Sie versuchen gerade ein Konto zu eroeffnen!" <<endl;
		cout << "Wie ist Ihr Name  ?"
		cin >> name;
		cout << "Wie hoch ist Ihr Startkapital"
		cin >> startkapital;
		konti::eroeffnen(name, startkapital);
	}

	return 0;
}

