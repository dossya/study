program simple;

var
  i, j, N: integer;
  a: ^integer;

begin
  readln(N);
  a := GetMem(N * sizeof(integer));
  for i := 0 to N - 1 do
    a[i] := random(500) + 1;
  for i := 0 to N - 2 do
    for j := i + 1 to N - 1 do
      writeln(a[i], ' ', a[j]);
  FreeMem(a);
  readln();
end.
