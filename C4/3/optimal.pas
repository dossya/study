program optimal;

uses
  SysUtils;

var
  i, a, k, t, N: integer;
  f: TextFile;

begin
  k := 0;

  t := 0;

  //AssignFile(f, '00');
  //reset(f);
  Readln(N);

  for i := 1 to N do
  begin
    Readln(a);
    if (a mod 7 = 0) and (a > k) then
    begin
      k := a;
      continue;
    end;
    if (a > t) and (a * k mod 2 = 0) then
      t := a;
  end;
  //Close(f);

  writeln(k * t + 1);

  //AssignFile(f, '00.out');
  //Write(f);
  //Writeln(f, k * t);
  //Close(f);

end.
