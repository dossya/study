program simple;

var
  i, j, N: integer;
  a: ^integer;

begin
  readln(N);
  a := GetMem(N * sizeof(integer));
  for i := 1 to N do
    a[i] := random(500) + 1;
  for i := 1 to N - 1 do
    for j := i + 1 to N do
      writeln(a[i], ' ', a[j]);
  FreeMem(a);
  readln();
end.
