program simple;

var
  i, j, m, N: integer;
  a: ^integer;

begin
  readln(N);

  m:=0;

  a := GetMem(N * sizeof(integer));
  for i := 0 to N - 1 do
    a[i] := random(500) + 1;

  for i := 0 to N - 2 do
    for j := i + 1 to N - 1 do
      if (a[i] * a[j] > m) and (a[i] * a[j] mod 14 = 0) then
        m := a[i] * a[j];

  writeln(m);

  FreeMem(a);

  readln();
end.
