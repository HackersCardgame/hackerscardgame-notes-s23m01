#include <iostream.h>

int howmany(char *zeichenkette)
{
	int x;
	for (x=0;zeichenkette[x]!='\0';x++) {
	}
    return x;

}

int main(void)
{
	char name[80];
	cout << "Bitte Name eingeben: ";
	cin >> name;
	cout << endl;
	cout << "Der Name hat " << howmany(&name[0]) << " Zeichen";
	return 0;
	
}
