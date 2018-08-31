program project1;

const
  N = 3;
var
  a: array [1..N] of integer;
  i, j, min, min2, s: integer;
begin
  for i := 1 to N do
    readln(a[i]);
  min := a[1] + a[2];
  for i := 1 to N - 1 do
    for j := i + 1 to N do
      if (min >= a[i] + a[j]) then
      begin
        min := a[i] + a[j];
        min2 := i;
        s := j;
      end;
  writeln(min2, ' ', s);
  readln();
end.
