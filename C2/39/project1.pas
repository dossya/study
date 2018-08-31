program project1;

const
  N = 30;
var
  a: array [1..N] of integer;
  i, j, imax, jmax, c: integer;
begin
  for i := 1 to N do
    readln(a[i]);
  imax := 0;
  jmax := 0;
  for i := 1 to N do
    for j := 1 to 100 do
      if (a[i] mod j = 0) then
        jmax := jmax + 1;
  if (imax < jmax) then
  begin
    imax := jmax;
    c := i;
  end;
  jmax := 0;
  writeln(c);
  readln();
end.
