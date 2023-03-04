#include <iostream.h>

main(void)
{
int a=0;
int b=0;
int c=0;
int d=0;

	cout << "Bitte Zahl eingeben" <<endl <<endl;
    cin >> a;
    b=a;
    for (d=1;d<6;d++) {
    	c+=b%10;
    	b-=b%10;
    	b/=10;
    }	      
	cout << "Die Quersumme von "<< a << " ist " << c;
	return 0;
}