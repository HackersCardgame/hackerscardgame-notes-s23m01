#include <iostream.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>

main(void)

{
int zz;
int eingabe=0;

	srand ((unsigned) time(NULL));
	zz=rand();
    zz=zz%100;
    cout << zz;
	while (eingabe!=zz) {
		cout << "bitte zahl eingeben " <<endl;
		cin >> eingabe;
		if (eingabe>zz) cout << "zu gross" <<endl;
		if (eingabe<zz) cout << "zu klein" <<endl;
		if (eingabe==zz) cout << "RICHTIG" <<endl;
	}


	return 0;


}