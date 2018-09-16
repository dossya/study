program simple;

const
  NLim = 30;
var
  f: TextFile;
  a: array [1..NLim] of integer;
  O, N, R: integer;
  i, j, k, t: integer;

begin
  readln(N);
  AssignFile(f, 'tests_gen.txt');
  R := 0;

  for k := 1 to 3 do begin
    for i := 1 to N do
    begin
      a[i] := random(NLim) + 1;
      writeln(a[i]);
      append(f);
      Writeln(f, a[i]);
      Close(f);
    end;
      for t := 1 to N - 1 do
        for j := t + 1 to N do
          if (a[t] * a[j] mod 14 = 0) and (a[t] * a[j] > R) then
              R := a[t] * a[j];
      readln(O);
      while (O <> R) do
        readln(O);
      append(f);
      Writeln(f, R);
      Close(f);
  end;
  readln();
end.
