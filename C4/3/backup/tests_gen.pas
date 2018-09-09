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

  for k := 0 to 3 do
  begin

    for i := 0 to N - 1 do
      a[i] := random(50) + 1;

    for i := 0 to N - 1 do
      writeln(a[i]);

    readln(R);

    s := Concat('0', IntToStr(k));
    AssignFile(f, s);
    for i := 0 to N - 1 do
    begin
      append(f);
      Writeln(f, a[i]);
      Close(f);
    end;

    s := Concat('0', IntToStr(k), '.a');
    AssignFile(f, s);
    append(f);
    Writeln(f, R);
    Close(f);
  end;

  readln();
end.
