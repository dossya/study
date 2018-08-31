program project1;

const
  N = 70;
var
  a: array [1..N] of integer;
  i, j, x: integer;
begin
  for i := 1 to N do
    readln(a[i]);
  x := abs(a[1] - a[2]);
  for i := 1 to N - 1 do
    for j := i + 1 to n do
      if (x <= abs(a[i] - a[j])) then
        x := abs(a[i] - a[j]);
  writeln(x);
  readln();
end.
