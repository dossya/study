program rrr;

var
  a, b, f, k, n, m, s: integer;

begin
  readln(n, m, a, b);
  k := m - n;
  f := 1;
  if ((k div 4) > 0) then
    f := k div 4;
  while k >= 1 do
  begin
    if ((b * f) < (a * k)) then
    begin
      s := s + b;
      k := k - 4;
    end
    else
    begin
      s := s + a;
      k := k - 1;
    end;
  end;
  writeln(s);
  readln();
end.
