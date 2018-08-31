program project2;

const
  N = 3;
var

  a: array [1..N] of integer;
  i, l, lmax, s, smax: integer;

begin
  for i := 1 to N do
    Read(a[i]);
  l := 1;
  s := a[1];
  lmax := 0;
  for i := 1 to N - 1 do
  begin
    if (a[i] < a[i + 1]) and (l >= lmax) then
    begin
      l := l + 1;
      s := s + a[i + 1];
    end
    else
    begin
      l := 1;
      s := a[i + 1];
    end;
    if (lmax < l) then
    begin
      lmax := l;
      smax := s;
    end;
  end;
  writeln(smax);
  readln();
end.
