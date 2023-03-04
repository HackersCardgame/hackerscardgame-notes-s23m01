#include <iostream.h>



class Konto {

	private:
		char name[80];
		int kontostand;

	public:
		void einzahlen(void);
		void auszahlen(void);
		void info(void);
		void eroeffnen(void);
		void menu(void);
		Konto(void);
		~Konto(void);
};