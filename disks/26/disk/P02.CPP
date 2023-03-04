#include <iostream.h>

int main(void)

{

	int a;
	int b;
	int c;
	char q='*';
	char restart='n';
	
	do
	{   
		cout << "Bitte darzustellendes Zeichen eigeben! ";
		cin >> q;
		cout << "Bitte Zeilenzahl eingeben! ";
		cin >> c;   
	                       
		for (a=1;a<=c;a++)				//Schleife für Zeilen
		{ 	
			for (b=1;b<=a;b++)			//Schleife für Spalten
			{
				if (b>5) cout << " "; 
				cout << " " << q;
			}
			cout << endl;
		}                 
		cout << "Nochmals ? ";
		cin >> restart;
		cout << endl;
	} while (restart=='j'||restart=='J');
	return 0;
}