program Nibbles;

uses Crt,graph;

(****************** Typen und Objektdefinitionen ****************)

const Feldbreite = 32;                                             (* definition der Spielfeldbreite *)
      Feldhoehe  = 24;                                             (* definition der Spielfeldhoehe *)
      bgi_pfad='f:\prog\tp\bgi';

type
        zeile = record                                             (*Benutzerdefinierter Datentyp f¸r Rangliste*)
            Name   : String[40];
            Punkte : Integer;
        end;

type
        pos = record                                               (*Benutzerdefinierter Datentyp f¸r Positionen*)
            x, y : byte;                                           (*Position beinhaltet x- und y-Komponente*)
        end;

        inhalt     = (leer, hinderniss, futter);                   (*Enumerierung f¸r Inhalt des Schlangenarrays*)

        richtungen = (links, rechts, auf, ab);                     (*Enumerierung f¸r Richtungen*)

        zustand    = (lebend, tod);                                (*Enumerierung f¸r eindeutigen Zustand*)

type
   Schlange = object

      public
         constructor Inizialisieren(x,y : byte; spieler:String);                   (*Allgemeiner Konstruktor*)
         destructor Loeschen;                                      (*Allgemeiner Destruktor*)
         function getZustand:zustand;                              (*Methode f¸r die Zustandsabfrage*)
         procedure bewegen(richtung : richtungen; var Kopf, Schwanz : pos);
                                                                   (*Methode f¸r Steuerung der Schlange*)

      private                                                      (*Private Objektdaten*)
         aktZustand : Zustand;                                     (*Variabel f¸r den Zustand der Schlange (lebend/tod)*)
         neuePosition : pos;                                       (*Tempor‰re Position*)
         Aussehen : array [1..feldbreite*feldhoehe] of pos;        (*1.dimension: l‰nge; 2.dimension: x/y position*)
         laenge   : integer;                                       (*l‰nge der Schlange : anfangszustand=1*)
         name     : String[20];
   end;
(****************** Typen und Objektdefinitionen ****************)


(********************** Variabeldefinitionen ********************)


var      Spielfeld          : Array [1..Feldbreite,1..Feldhoehe] of inhalt;
         Spieler1           : Schlange;
         Spieler2           : Schlange;
         TasteSpieler       : byte;                                (*F¸r Tastaturabfrage Spieler*)
         richtungSpieler1   : richtungen;                          (*‹bergabevariabel f¸r Richtung von Spieler 1*)
         richtungSpieler2   : richtungen;                          (*‹bergabevariabel f¸r Richtung von Spieler 2*)
         LaufVar            : pos;                                 (*Laufvariabel f¸r x-Koordinaten*)
         Kopf1              : pos;                                 (*‹bergabe Variabel f¸r Position des Spieler1-Kopfes*)
         Schwanz1           : pos;                                 (*‹bergabe Variabel f¸r Position des Spieler1-Schwanzes*)
         Kopf2              : pos;                                 (*‹bergabe Variabel f¸r Position des Spieler2-Kopfes*)
         Schwanz2           : pos;                                 (*‹bergabe Variabel f¸r Position des Spieler2-Schwanzes*)
         fressen            : pos;                                 (*Variabel f¸r Position des Fressen*)
         neuesFressen       : boolean;                             (*Zum entscheiden ob ein neues Fressen braucht*)
         mauer              : pos;
         Startpunkt1        : pos;
         Startpunkt2        : pos;
         anzSpieler         : char;
         g_treiber,g_modus  : integer;
         name1              : String[20];
         name2              : String[20];
         x,y,f,z            : integer;
         geschwindigkeit    : integer;
         speedstring        : string;
         asdf               : integer;
(********************** Variabeldefinitionen ********************)


(******************** Funktionen und Prozeduren *****************)

constructor Schlange.Inizialisieren(x,y : byte; spieler:String);

var init : integer;                                                (*Laufvariable*)

begin
   for init := 0 to feldbreite*feldhoehe do                        (*Array Schlange.Aussehen r¸cksetzen*)
      begin
         Aussehen[init].x := x;
         Aussehen[init].y := y;
      end;
   aktZustand := lebend;
                                                                   (*Schlange lebendig machen*)
   laenge := 2;                                                    (*Anfangsl‰ne definieren*)
   name := spieler;
end;

procedure Schlange.bewegen(richtung : richtungen; var Kopf, Schwanz : pos);
                                                                   (*Obiekt zur Steuerung der Schlange*)
var i  : integer;

begin
   case ord(richtung) of                                           (*Auswertung und Verarbeitung des ¸bergebenen Tasten-Codes*)
      0: neuePosition.x := Aussehen[1].x - 1;
      1: neuePosition.x := Aussehen[1].x + 1;
      2: neuePosition.y := Aussehen[1].y - 1;
      3: neuePosition.y := Aussehen[1].y + 1;
   end;
   if Spielfeld[neuePosition.x, neuePosition.y] <> leer then
   begin
      if Spielfeld[neuePosition.x,neuePosition.y] = hinderniss then aktZustand := tod
      else                                                         (*¸brig bleibt fressen  --> Schlangenl‰nge um eins erh‰hen*)
      begin
           laenge:=laenge+1;
           neuesFressen:=True;
      end;
   end;
   i:=laenge;
   while i > 0 do
      begin
         aussehen[i+1]:=aussehen[i];
         i := i-1;
      end;
   aussehen[1]:=neuePosition;
   Kopf.x := Aussehen[1].x;
   Kopf.y := Aussehen[1].y;
   Schwanz.x := Aussehen[Laenge].x;
   Schwanz.y := Aussehen[Laenge].y;
end;


function Schlange.getZustand:zustand;

begin
     getZustand:=aktZustand;
end;


destructor Schlange.Loeschen;  (*Mit dieser Routine wird das Objekt wieder aus dem Speicher gelˆscht*)

begin
if aktZustand<>tod then
 begin
     SetFillstyle(solidfill,blue);
     bar(0,0,getmaxx,getmaxy);
     SetTextStyle(red,HorizDir,3);
     textcolor (yellow);
     outtextxy (310,180,name);
     outtextxy(310,220,'hat verloren!!');
  end;
  sound(1000);
  Delay(1000);
  nosound;
end;

procedure FressenGenerieren;   (*Mit dieser Routine wird ein neues Fressen generiert inklusive ¸berwachung*)

begin
     while (Spielfeld[fressen.x,fressen.y] <> leer) or NeuesFressen do
     begin
          fressen.x := random(Feldbreite);
          fressen.y := random(Feldhoehe);
          NeuesFressen := False;
     end;
     Spielfeld[Fressen.x,Fressen.y] := futter;
     setlinestyle(0,0,1);
     Circle((Fressen.x-1)*20+10,(Fressen.y-1)*20+10,8);
     Circle((Fressen.x-1)*20+10,(Fressen.y-1)*20+10,6);
     Circle((Fressen.x-1)*20+10,(Fressen.y-1)*20+10,4);
     Circle((Fressen.x-1)*20+10,(Fressen.y-1)*20+10,2);
     sound(2600);
     delay(20);
     nosound;
end;

Procedure Spielfeldbauen;

var j : byte;

begin
     SetFillStyle(solidfill,7);
     Bar (0,0,getmaxx,getmaxy);
     SetFillStyle(solidfill,red);
     For j := 1 to Feldbreite do
     begin
          Spielfeld[j,1]:=hinderniss;
          bar((j-1),0,j*20,20);
          Spielfeld[j,Feldhoehe]:=hinderniss;
          bar((j-1)*20,(Feldhoehe-1)*20,(j)*20,(Feldhoehe)*20);
     end;
For j := 1 to Feldhoehe do
     begin
          Spielfeld[1,j]:=hinderniss;
          bar(0,j-1,20,(j-1)*20);
          Spielfeld[Feldbreite,j]:=hinderniss;
          bar((Feldbreite-1)*20,(j-1)*20,Feldbreite*20,j*20);
     end;
end;

(*
Procedure Delay(ms : LongInt);
  Var
    TickCount : LongInt;
    M         : TMsg;
  Begin
    TickCount := GetTickCount;
    While GetTickCount - TickCount < ms do
      If PeekMessage(M,0,0,0,pm_Remove) then
        Begin
          TranslateMessage(M); DispatchMessage(M);

        End;
End;
  *)

procedure intro;                                                (*by C.Hohl*)
begin
          setbkcolor(1);					{Titelbild}
          setfillstyle(Solidfill,1);
          bar(0,0,getmaxx,getmaxy);
          setcolor(yellow);
          SetTextStyle(Gothicfont,HorizDir,8);
          settextjustify(centertext,centertext);
          outtextxy(getmaxx div 2,170,'Nibbles');
          setcolor (yellow); 
          SetTextStyle(gothicfont,HorizDir,5);
          outtextxy(getmaxx div 2,230,'Run or Die');
          setcolor(green);
          SetTextStyle(gothicfont,HorizDir,3);
          outtextxy(getmaxx div 2,310,'Copyright by Marc & Chregu');

          z:=1;					{Sternenrundlauf}
          x:=80;
          y:=80;
          f:=1;

          while f<100 do
          begin

	while x<550 do
	begin

	delay(1);
	setcolor(yellow);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y,'*');
	
	delay(1);
	setcolor(lightblue);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x+20,y,'*');
	x:=x+40;

                end;


	while y<400 do
	begin

	delay(1);
	setcolor(yellow);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y,'*');

	delay(1);
	setcolor(lightblue);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y+20,'*');
	y:=y+40;

                end;


	while x>80 do
	begin

	delay(1);
	setcolor(yellow);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y,'*');
	
	delay(1);
	setcolor(lightblue);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x-20,y,'*');
	x:=x-40;

                end;


	while y>80 do
	begin

	delay(1);
	setcolor(yellow);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y,'*');
	
	delay(1);
	setcolor(lightblue);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y-20,'*');
	y:=y-40;

                end;


 	x:=80;
	y:=80;
          

	while x<550 do
	begin

	delay(1);
	setcolor(red);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y,'*');
	
	delay(1);
	setcolor(yellow);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x+20,y,'*');
	x:=x+40;

                end;


	while y<400 do
	begin

	delay(1);
	setcolor(red);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y,'*');

	delay(1);
	setcolor(yellow);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y+20,'*');
	y:=y+40;

                end;


	while x>80 do
	begin

	delay(1);
	setcolor(red);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y,'*');

	delay(1);
	setcolor(yellow);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x-20,y,'*');
	x:=x-40;

                end;


	while y>80 do
	begin

	delay(1);
	setcolor(red);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y,'*');

	delay(1);
	setcolor(yellow);
	settextstyle (triplexfont, horizdir, blue);
	settextjustify (centertext, centertext);
	outtextxy(x,y-20,'*');
	y:=y-40;
                f:=f+1;

                end;

         end;

(*         closegraph;

	g_treiber:=detect;
	graphdriver:=detect;
	initgraph(g_modus,bgi_pfad);
	max_x:=getmaxx;
	max_y:=getmaxy;

	Directvideo:=false;*)

	setfillstyle(Solidfill,0);
	bar(0,0,getmaxx,getmaxy);

	TEXTCOLOR(Yellow);
	writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;
	writeln('Warnung!!!':45);
	writeln('==========':45);
	writeln;writeln;
	writeln('Dieses Spiel kann zu eptileptischen Nebenwirkungen fÅhren.':70);
	writeln('Falls plîtzliche Sehstîrungen oder Magenbeschwerden auftreten,':72);
	writeln('ist das Spiel umgehend zu beenden und einen Arzt aufzusuchen.':70);
	delay(3000);
	clrscr;
end;

procedure menu;
begin
        setfillstyle(Solidfill,0);
	bar (0,0,getmaxx,getmaxy);
	textcolor(White);
        gotoxy(1,2);
        writeln('      1 ---------------- Einspielermodus');
        gotoxy(1,4);
	writeln('      2 --------------- Zweispielermodus');
        gotoxy(1,6);
        writeln('      h ---------------------- fÅr Hilfe');
        gotoxy(1,8);
        writeln('      g ----- fÅr Geschwindigkeit Ñndern');
        gotoxy(1,10);
        writeln('      e ----------------------- fÅr Ende');

end;

procedure setspeed;
begin
     While (geschwindigkeit < 0)or(geschwindigkeit > 11)or(asdf<>0) do
     begin
          Writeln('Bitte Schwierigkeitsstufe eingeben (1-10)');
          Writeln('1 ist am schwierigsten, 10 am einfachsten');
          Readln(speedstring);
          val(speedstring,geschwindigkeit,asdf);
     end;
     geschwindigkeit:=geschwindigkeit*10;
end;

procedure hilfe;
begin
     Writeln;
     Writeln;
     Writeln ('Das Ziel des Spieles ist, den Wurm mîglichst nicht in');
     Writeln ('Mauern, sich selbst oder (im Zweispielermodus) in den');
     Writeln ('Gegener zu manîvrieren und das mîglichst lange!!');
     Writeln;
     Writeln ('Die Tastenbelegung ist:');
     Writeln ('   Spieler 1:                        Spieler 2:');
     Writeln ('   a --- links                       4 --- links');
     Writeln ('   d --- rechs                       6 --- rechts');
     Writeln ('   s --- runter                      2 --- runter');
     Writeln ('   w --- hinauf                      8 --- hinauf');
     Writeln ('um eine kurze pause zu machen drÅcke man die Taste p');
     Writeln ('Zum verlassen der Hilfe bitte Taste drÅcken');
     repeat until keypressed;
end;


Procedure EinSpieler;

begin
   clrscr;
   randomize;
   Spieler1.Inizialisieren(15,5,' ');
   for LaufVar.y := 1 to feldhoehe do                              (*Spielfeld inizialisieren*)
      for LaufVar.x := 1 to feldbreite do
      begin
         Spielfeld[LaufVar.x,LaufVar.y] := leer;
      end;
   Spielfeldbauen;
   NeuesFressen := True;
   FressenGenerieren;
   RichtungSpieler1 := ab;
   while (Spieler1.getZustand <> tod)  do
   begin
      if keypressed = true then
      begin
         TasteSpieler := ord(ReadKey);
         case TasteSpieler of
               97: if richtungSpieler1 <> rechts then richtungSpieler1 := links;
               100: if richtungSpieler1 <> links then richtungSpieler1 := rechts;
               119: if richtungSpieler1 <> ab then richtungSpieler1 := auf;
               115: if richtungSpieler1 <> auf then richtungSpieler1 := ab;
               112: repeat until keypressed;
         end;
      end;
      if NeuesFressen then FressenGenerieren;
      Spieler1.bewegen(richtungSpieler1, Kopf1, Schwanz1);
      Spielfeld[Kopf1.x,Kopf1.y]:=hinderniss;
      SetFillStyle(XHatchFill, blue);
      bar((Kopf1.x-1)*20+1,(Kopf1.y-1)*20+1,((Kopf1.x-1)*20+19),(Kopf1.y-1)*20+19);
      Spielfeld[Schwanz1.x,Schwanz1.y]:=leer;
      SetFillStyle(solidfill, 7);
      bar((Schwanz1.x-1)*20+1,(Schwanz1.y-1)*20+1,(Schwanz1.x-1)*20+19,(Schwanz1.y-1)*20+19);
      Delay(geschwindigkeit);
   end;
   Spieler1.Loeschen;
   Outtext('Ende');
end;

Procedure ZweiSpieler;

begin
   bar (0,0,getmaxx,getmaxy);
   textcolor(yellow);
   settextstyle(triplexfont, HorizDir,3);
   SetTextJustify(centertext,centertext);
   outtextxy(310,30,'Bitte Name von Spieler 1 eingeben: ');
   gotoxy(30,5);
   Readln(name1);
   outtextxy(310,100,'Bitte Name von Spieler 2 eingeben: ');
   gotoxy(30,10);
   Readln(name2);
   clrscr;
   randomize;
   Spieler1.Inizialisieren(30, 5, name1);
   Spieler2.Inizialisieren(10, 5, name2);
   for LaufVar.y := 1 to feldhoehe do                              (*Spielfeld inizialisieren*)
      for LaufVar.x := 1 to feldbreite do
      begin
         Spielfeld[LaufVar.x,LaufVar.y] := leer;
      end;
   Spielfeldbauen;
   NeuesFressen := True;
   FressenGenerieren;
   RichtungSpieler1 := ab;
   RichtungSpieler2 := ab;
   while ((Spieler1.getZustand <> tod) and (Spieler2.getZustand <> tod)) do
   begin
      if keypressed = true then
      begin
         TasteSpieler := ord(ReadKey);
         case TasteSpieler of
              52: if richtungSpieler1 <> rechts then richtungSpieler1 := links;  (*Tastaturabfrage inklusive Verriegelung*)
              54: if richtungSpieler1 <> links then richtungSpieler1 := rechts;
              56: if richtungSpieler1 <> ab then richtungSpieler1 := auf;
              50: if richtungSpieler1 <> auf then richtungSpieler1 := ab;
              97: if richtungSpieler2 <> rechts then richtungSpieler2 := links;                 (**)
             100: if richtungSpieler2 <> links then richtungSpieler2 := rechts;                (**)
             119: if richtungSpieler2 <> ab then richtungSpieler2 := auf;                   (**)
             115: if richtungSpieler2 <> auf then richtungSpieler2 := ab;
             112: repeat until keypressed;                    (**)
         end;
      end;
      if NeuesFressen then FressenGenerieren;
      Spieler1.bewegen(richtungSpieler1, Kopf1, Schwanz1);
      Spieler2.bewegen(richtungSpieler2, Kopf2, Schwanz2);
      Spielfeld[Kopf1.x,Kopf1.y]:=hinderniss;
      SetFillStyle(XHatchFill, green);
      bar((Kopf1.x-1)*20+1,(Kopf1.y-1)*20+1,((Kopf1.x-1)*20+19),(Kopf1.y-1)*20+19);
      Spielfeld[Schwanz1.x,Schwanz1.y]:=leer;
      SetFillStyle(solidfill, 7);
      bar((Schwanz1.x-1)*20+1,(Schwanz1.y-1)*20+1,(Schwanz1.x-1)*20+19,(Schwanz1.y-1)*20+19);
      Spielfeld[Kopf2.x,Kopf2.y]:=hinderniss;
      SetFillStyle(XHatchFill, yellow);
      bar((Kopf2.x-1)*20+1,(Kopf2.y-1)*20+1,((Kopf2.x-1)*20+19),(Kopf2.y-1)*20+19);
      Spielfeld[Schwanz2.x,Schwanz2.y]:=leer;
      SetFillStyle(solidfill, 7);
      bar((Schwanz2.x-1)*20+1,(Schwanz2.y-1)*20+1,(Schwanz2.x-1)*20+19,(Schwanz2.y-1)*20+19);
      Delay(geschwindigkeit);
   end;
   Spieler1.Loeschen;
   Spieler2.Loeschen;
end;

(******************** Funktionen und Prozeduren *****************)



(************************** Hauptprogramm ***********************)


begin
     clrscr;
     g_treiber:=detect;
     g_modus:=10;
     initgraph(g_treiber,g_modus,bgi_pfad);
     DirectVideo:=false;
     intro;
     geschwindigkeit:=80;
     anzSpieler:='0';
     while (anzSpieler <> 'e') and (anzSpieler <> 'E') do
     begin
          menu;
          anzSpieler:=Readkey;
          if anzSpieler = '1' then einSpieler
          else if anzSpieler = '2' then ZweiSpieler
          else if anzSpieler = 'h' then hilfe
          else if anzSpieler = 'g' then setspeed;
     end;
end.

(************************** Hauptprogramm ***********************)