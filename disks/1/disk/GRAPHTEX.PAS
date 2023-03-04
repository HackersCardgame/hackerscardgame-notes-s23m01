program GraphTest;
uses
  Graph;
var
  GraphDriver: Integer;
  GraphMode: Integer;
  ErrorCode: Integer;
begin
  GraphDriver := Detect;
  InitGraph(GraphDriver, GraphMode, 'C:\DRIVERS');
  ErrorCode := GraphResult;
  if ErrorCode <> grOk then
  begin
    Writeln('Graphics error: ', GraphErrorMsg(ErrorCode));
    Writeln('Program aborted...');
    Halt(1);
  end;
  OutText('In G.Mode');
  Readln;
  RestoreCRTMode;
  Write('Now in t.Mode');
  Readln;
  SetGraphMode(GraphMode);
  OutText('B. in G.Mode');
  Readln;
  CloseGraph;
{  Rectangle(0, 0, GetMaxX, GetMaxY);
  SetTextJustify(CenterText, CenterText);
  SetTextStyle(DefaultFont, HorizDir, 3);
  OutTextXY(GetMaxX div 2, GetMaxY div 2,'Borland Graphics Interface (BGI)');
  Readln;
  CloseGraph;}
end. { GraphTest }