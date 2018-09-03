program optim;

var
  i, a, k, t, N: integer;

begin
  k := 0;
  t := 0;
  readln(N);
  for i := 1 to N do
  begin
    readln(a);
    if (a mod 7 = 0) and (a > k) then
    begin
      k := a;
      continue;
    end;
    if (a > t) and (a * k mod 2 = 0) then
      t := a;
  end;
  writeln(k * t);
  readln();
end.
