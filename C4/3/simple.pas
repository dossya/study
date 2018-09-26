program simple;

const
  NLim = 30;
var
  a: array [1..NLim] of integer;
  N, R: integer;
  i: integer;

  function simple(): integer;
  var
    t, R, j: integer;
  begin
    R := 0;
    for t := 1 to N - 1 do
      for j := t + 1 to N do
        if (a[t] * a[j] mod 14 = 0) and (a[t] * a[j] > R) then
          R := a[t] * a[j];
    exit(R);
  end;

begin
  readln(N);
  for i := 1 to N do
    readln(a[i]);
  writeln(simple());
end.
