program project3;

const
  N = 3;
var
  a: array[1..N] of integer;
  i, l, lmax: integer;

begin
  for i := 1 to N do
    readln(a[i]);
  l := 0;
  lmax := 0;
  for i := 1 to N do
  begin
    if (a[i] < 0) and (l >= lmax) then
    begin
      l := l + 1;
    end
    else
      l := 0;
    if (lmax < l) then
      lmax := l;
  end;
  writeln(lmax);
  readln();
end.
