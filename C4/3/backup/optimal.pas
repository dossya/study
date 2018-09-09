program optimal;

uses
  SysUtils;

var
  i, a, k, t, N: integer;
  f: TextFile;

begin
  k := 0;

  t := 0;

  readln(N);

  AssignFile(f, '00');
  for i := 1 to N do
  begin
    readln(a);
    append(f);
    Writeln(f, a);
    Close(f);
    if (a mod 7 = 0) and (a > k) then
    begin
      k := a;
      continue;
    end;
    if (a > t) and (a * k mod 2 = 0) then
      t := a;
  end;

  writeln(k * t);

  AssignFile(f, '00.out');
  write(f);
  Writeln(f, k * t);
  Close(f);
  except
  on EInOutError do
  Messagedlg('File I/O error.' mtError, [mbOk], 0);
  end;

  readln();
end.
