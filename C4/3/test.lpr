program test;

var
  i, j, o, s, N: integer;
  a: array [1..1000] of integer;

  function optimal(): integer;
  var
    k, t: integer;
  begin
    k := 0;
    t := 0;
    for i := 1 to N do
    begin
      if (a[i] mod 7 = 0) and (a[i] > k) then
      begin
        k := a[i];
        continue;
      end;
      if (a[i] > t) and (a[i] * k mod 2 = 0) then
        t := a[i];
    end;
    exit(k * t);
  end;

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
  Readln(N);
  randomize();
  for j := 1 to 10000 do
  begin
    for i := 1 to N do
      a[i] := random(50) + 1;
    o := optimal();
    s := simple();
    if s <> o then
      writeln('error')
    else
      writeln('ok');
  end;
  readln();
end.
