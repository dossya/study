program optimal;

var
  a, b, k, n, m, s: integer;

begin
  readln(n, m, a, b);
  k := m - n;
  if (k div 4) > 0 then
    if ((b * (k div 4)) < (a * k)) then
      s := b * (k div 4)
    else
      s := a * k;
  if (a * (k mod 4)) < b then
    s := s + a * (k mod 4)
  else
    s := s + b;
  writeln(s);
  readln();
end.
