#include "stdafx.h"

#include <iostream.h>
#include "konto.h"


Konto::Konto(void) {
	kontostand = 0;
	name[0] = '\0';
	eroeffnen();
}

Konto::~Konto(void) {
	if (kontostand > 0) {
		cout << "Ihr Kontostand war groesser 0!" << endl;
		cout << "Das Geld behaelt dann mal die Bank! :) " << endl;
		cout << "Danke Vielmals!" << endl;
	}
}

void Konto::eroeffnen(void) {
	cout << "Neues Konto wird eroeffnet" << endl;
	cout << "Geben sie ihren Namen ein:";
	cin >> name;
	cout << "Wieviel ist ihr Startkapital?";
	cin >> kontostand;
	cout << "Ihr Konto wurde eroeffnet!" << endl;
	cout << "Zur ueberpruefung werden jetzt die Daten angezeigt:";
	info();
}

void Konto::info(void) {
	cout << "Konto " << name << " hat " << kontostand << " auf seinem Konto" << endl; 
}
	
void Konto::einzahlen(void) {
	cout << "Wieviel wollen sie einzahlen? ";
	int c;
	cin >> c;
	kontostand += c;
	cout << "Neuer Kontostand: " << kontostand << endl;
}

void Konto::auszahlen(void) {
	int c;
	int d;
	do {
		d = 0;
		cout << "Wieviel wollen sie abheben? ";
		cin >> c;
		if (c > kontostand) {
			cout << "Du kannst nur :" << kontostand << " abheben!" << endl;	
			d = 1;
		}
		if (c < 0) {
			cout << "Du kannst nur einen positiven Betrag abheben!" << endl;
			d = 1;
		}

	} while (d);

	kontostand -= c;
	cout << "Neuer Kontostand: " << kontostand << endl;
}

void Konto::menu(void) {
	int i;
	do {
		cout << "Was wollen sie tun?" << endl;
		cout << "1. Einzahlen\n2. Abheben\n3. Info\n4.Ende" << endl;
		cout << "Waehlen sie die entsprechende Nummer:";
		cin >> i;
		switch (i) {
			case 1:
				einzahlen();
				break;
			case 2:
				auszahlen();
				break;
			case 3:
				info();
				break;
			default:
				i = 4;
		}
	} while (i != 4); 
}