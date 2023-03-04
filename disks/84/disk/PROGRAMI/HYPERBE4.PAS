Program Hyperbel;


(* Von Marc Landolt                 26.3.93*)
(* Turbopascal 6 *)

uses Crt, Graph;

  var

                Gd, Gm, x0, x1 : Integer;
                    y0, y1, y2 : real;

   begin
     y0 := 0; y1 := 0;
     Gd := Detect; InitGraph(Gd, Gm, '');
     if GraphResult <> grOk then Halt(1);
     y0 := 620; y1 := 20;
     repeat
     y0 := y0 * 1.0015 ; y1 := y1 / 1.0015 ;
     OutTextXY(200, 300, 'Hallo');
     x0 := round(y0) ; x1 := round(y1);
     PutPixel (x0, x1, 15);                   {X-achse,Y-achse,Farbe}
     line (0,480,0,0);
     line (0, 0, 640, 0);
     until y0 > 640;
     ReadLn;
     CloseGraph;
  end.