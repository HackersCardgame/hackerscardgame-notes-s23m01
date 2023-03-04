#include <iostream.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#define anzzie 6

int main(void)
{
	int zz;
	int a,b;
	int gez[anzzie];
	int gew[anzzie];
	int ZahlOk;

	for (a=0;a<anzzie;a++) {
	    cin >> b;
		gew[anzzie]=b;
    }

	for (a=0;a<anzzie;a++) {
		gez[a]=0;
	}
	
	srand ((unsigned) time(NULL));
	for (a=0;a<anzzie;a++) {
		ZahlOk= 1;
		zz=rand();
		zz=zz%45;
    	gez[a]=zz;
		for (b=0; b<a; ++b) {
		 	if (gez[a]==gez[b]) {
		 		ZahlOk= 0;
		 	} else {
		 	}
		}
		if (ZahlOk==0) {
			--a;
		} else {
		}
    }
    
    for (a=0;a<anzzie;a++) {
		cout << gez[a] <<"\t";
	}
	
	return 0;

}

