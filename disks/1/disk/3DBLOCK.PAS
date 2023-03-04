uses Graph;
var
  Gd, Gm: Integer;
  Y0, Y1, Y2, X1, X2: Integer;
begin
 Gd := Detect;
 InitGraph(Gd, Gm, '');
 if GraphResult <> grOk then
   Halt(1);
 Y0 := 100;
 Y1 := 60;
 Y2 := 100;
 X1 := 220;
 X2 := 50;
 Bar3D(X1, Y0, X2, Y1, 10, TopOn);
 Bar3D(X1, Y1, X2, Y2, 10, TopOff);
 Readln;
 CloseGraph;
end.