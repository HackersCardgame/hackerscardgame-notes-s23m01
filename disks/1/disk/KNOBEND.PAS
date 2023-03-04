program Test;
uses Crt;

var
  R      : byte;
  E      : byte;
  T      : byte;
  A      : byte;
  M      : byte;
  U      : byte;
  V      : byte;
  L      : byte;
  N      : byte;
  Vater  : LongInt;
  Mutter : LongInt;
  Eltern : LongInt;
  cnt    : byte;

begin
  cnt:=0;
  ClrScr;
  for R := 0 to 9 do
  begin
    for E := 0 to 9 do
    begin
      for T := 0 to 9 do
      begin
        for A := 0 to 9 do
        begin
          for M := 0 to 9 do
          begin
            for U := 0 to 9 do
            begin
              for V := 0 to 9 do
              begin
                for L := 0 to 9 do
                begin
                  for N := 0 to 9 do
                  begin
                    Vater := R+E*10+T*100+A*1000+V*10000;
                    Mutter := R+E*10+T*100+T*1000+U*10000+M*100000;
                    Eltern := N+R*10+E*100+T*1000+L*10000+E*100000;
                    if Vater+Mutter=Eltern then
                    begin
                      inc(cnt);
                      Write('Treffer ');
                      WriteLn(cnt);
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end.
