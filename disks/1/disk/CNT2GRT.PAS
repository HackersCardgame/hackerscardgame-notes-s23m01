program GraphTestCounter;
uses
  Graph;
var
  GraphDriver: Integer;
  GraphMode: Integer;
  ErrorCode: Integer;
    Count: Integer;
    N    : longInt;
begin
  GraphDriver := Detect;
  InitGraph(GraphDriver, GraphMode, 'C:\DRIVERS');
  ErrorCode := GraphResult;
  if ErrorCode <> grOk then
  begin
    Writeln('Graphics error: ', GraphErrorMsg(ErrorCode));
    Writeln('Program aborted...');
    end
    else
  begin
    Count := 1;
    Write('Enter a number: ');
    Readln (N);
    while Count <= 1000 do
    begin
      if N mod 2 = 0 then
      begin
        N := N div 2;
      end
      else
      begin
        N := 3 * N + 1;
      end;
      Count := Count + 1;
      Write('N=');
      Writeln(N);
    end;
    Writeln('This is the answer...');
  end;
end.