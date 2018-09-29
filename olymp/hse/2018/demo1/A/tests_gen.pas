program tests_gen;

uses
  SysUtils;

var
  f, g: TextFile;
  a, b, k, n, m, s, i: longint;
  c: string;


begin

  for i := 0 to 1 do
  begin
    c := Concat('0', IntToStr(i));
    AssignFile(f, c);
    rewrite(f);
    readln(n);
    Writeln(f, n);
    readln(m);
    Writeln(f, m);
    readln(a);
    Writeln(f, a);
    readln(b);
    Writeln(f, b);
    Close(f);
    k := m - n;
    if (k div 4) > 0 then
      if ((b * (k div 4)) < (a * k)) then
        s := b * (k div 4)
      else
        s := a * k;
    if (a * (k mod 4)) < b then
      s := s + a * (k mod 4)
    else
      s := s + b;
    writeln(s);
    c := Concat('0', IntToStr(i), '.a');
    AssignFile(g, c);
    rewrite(g);
    Writeln(g, s);
    Close(g);
  end;
  readln();
end.
