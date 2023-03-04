#include <iostream.h>
#include <time.h>
#include <conio.h>    

	enum NOTEN {       
		C0=262, D0= 296, E0=330, F0=349, G0=392, A0=440, B0=494,
		C1=523, D1= 587, E1=659, F1=698, G1=784, A1=880, B1=988,
		EIGHT=125, QUARTER=250, HALF=500, WHOLE=1000, END=0
	};
	
	void Sleep(clock_t wait)
	{
		clock_t goal;
	
		goal= wait+clock();
		while (goal>clock() );
	}
	void Spiele (int frequency, int duration)
	{
		int control;
	
		if (frequency) {
			if (duration<75) {
				duration=75;
			}
			_outp(0x43, 0xb6);
			frequency= (unsigned) (1193180L / frequency);
			_outp( 0x42, (char) frequency);
			_outp( 0x42, (char) (frequency >>8));
			control= inp(0x61);
			_outp( 0x61, control | 0x3);
		}
		Sleep( (clock_t) duration);
		if (frequency) {
			_outp (0x61, control);
		}
	}
	
int main (void)
{
	NOTEN lied[] = {
		C1, HALF, D1, HALF, E1, HALF, F1, HALF, G1, HALF,
		A1, HALF, B1, HALF, A1, EIGHT, A1, EIGHT, A1, EIGHT ,
		§END
	};
	
	int note;
	
	for (note=0; lied[note]!=END; note+=2) {
		Spiele(lied[note], lied[note+1]);
	}
	return 0;
}
