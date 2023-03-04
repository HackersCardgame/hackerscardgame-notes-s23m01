program Test3;
uses
  Graph;
const
  Start = 25;
  Finish = 175;
  Step = 2;
var
  GraphDriver: Integer;
  GraphMode: Integer;
  ErrorCode: Integer;
  X1,Y1,X2,Y2: Integer;
begin
  GraphDriver := Detect;
  InitGraph(GraphDriver, GraphMode, '');
  ErrorCode := GraphResult;
  if ErrorCode <> grOk then
  begin
    Writeln('Graphics error: ', GraphErrorMsg(ErrorCode));
    Writeln('Bau Dir mal ne Grafik-Karte ein !');
    Writeln('Programm abgebrochen...');
    Readln;
    Halt(1);
  end;
  Y1 := Start;
  Y2 := Finish;
  X1 := Start;
  while X1 <= Finish do
  begin
    X2 := (Start+Finish) - X1;
    Line(X1, Y1, X2, Y2);
    X1 := X1 + Step;
  end;
  X1 := Start;
  X2 := Finish;
  Y1 := Start;
  while Y1 <= Finish do
  begin
    Y2 := (Start+Finish) - Y1;
    Line(X1, Y1, X2, Y2);
    Y1 := Y1 + Step;
  end;
  OutText('Press <Enter> to quit:');
  Readln;
  CloseGraph;
end. {Test3}