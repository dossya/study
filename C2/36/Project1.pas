program Project1;

const
  N = 30;
var
  a: array [1..N] of integer;
  kmax, k, i: integer;
begin
  for i := 1 to N do
    readln(a[i]);
  k := 1;
  kmax := 0;
  for i := 1 to N - 1 do
    if (a[i] = a[i + 1]) then begin
      k := k + 1;
      if (kmax < k) then
    kmax := k;
    end
    else
      k := 1;
  writeln(kmax);
  readln();
end.
