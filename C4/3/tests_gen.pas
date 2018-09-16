program tests_gen;

uses
  SysUtils;

var
  f: TextFile;
  a: array [1..1000] of integer;
  i, k, N, R: integer;
  s: string;

begin
  readln(N);
  randomize();
  for k := 0 to 3 do
  begin

    for i := 0 to N - 1 do
      a[i] := random(20) + 1;

    for i := 0 to N - 1 do
      write(a[i], ' ');

    readln(R);

    s := Concat('0', IntToStr(k));
    AssignFile(f, s);
    rewrite(f);
    Writeln(f, N);

    for i := 0 to N - 1 do
      Writeln(f, a[i]);

    Close(f);

    s := Concat('0', IntToStr(k), '.a');
    AssignFile(f, s);
    rewrite(f);
    Writeln(f, R);
    Close(f);
  end;

end.
