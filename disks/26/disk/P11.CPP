#include <string.h>
#include <iostream.h>

#define anzKatzen 5


struct Katze {
	char name[80];
	int anzFloehe;
};


int main(void) {

	int i,j,k;
	Katze Katzen[anzKatzen];
	Katze sortKatzen[anzKatzen];
	Katze tempKatze;
	
	for (i=0;i<anzKatzen;i++) {
		cout <<endl << "Bitte name der " << i+1 <<". Katze eingeben: ";
		cin >> Katzen[i].name;
		cout << endl << "Bitte Ahnzahl der Flöhe eingeben: ";
		cin >> Katzen[i].anzFloehe;
	}                     

	for (i=0;i<anzKatzen;i++) {
		strcpy	(sortKatze.name  Katze.name);
	}
		
	for (i=0;i<anzKatzen;i++) {
		for (j=i;j<anzKatzen;j++) {
			if (sortKatzen[i].anzFloehe > sortKatzen[j].anzFloehe) 
				tempKatze=sortKatzen[i];
				sortKatzen[i]=sortKatzen[j];
				sortKatzen[j]=tempKatze;
		}
	}
	
	cout << "Flohrangliste" << endl;
	
	for (i=0;i<anzKatzen;i++) {
		cout << "Die " << i+1 <<". Katze heisst " << sortKatzen[i].name << " und hat " << sortKatzen[i].anzFloehe << " Flöhe" << endl;
	}
	
	
	return 0;	
	


}