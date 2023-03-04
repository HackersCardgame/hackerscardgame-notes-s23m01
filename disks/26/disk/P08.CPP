#include <iostream.h>

void asdf(int *q)
{
	*q+=3;
	cout << "a ist " <<*q <<endl;
}

void qwer(int *c)
{
	cout <<"der pointer ist = " <<*c <<endl;
}

int main(void)
{
    int a=3, x;
    int *c=NULL;
    for (x=1;x<100;x++) {
    	asdf(&a);
    	qwer(&a);
	}
return 0;
}    

