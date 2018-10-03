program test;

var
  i, j, o, s, N: integer;
  a: array [1..1000] of integer;

  function optimal(): integer;
  var
    m, m2, m7, m14: integer;
  begin
    m := 0;
    m2 := 0;
    m7 := 0;
    m14 := 0;
    for i := 1 to N do
    begin
      if (a[i] mod 2 = 0) and (a[i] mod 7 <> 0) and (a[i] > m2) then
        m2 := a[i];
      if (a[i] mod 7 = 0) and (a[i] mod 2 <> 0) and (a[i] > m7) then
        m7 := a[i];
      if (a[i] mod 14 = 0) and (a[i] > m14) then
      begin
        if (m14 > m) then
        m := m14;
        m14 := a[i];
        continue;
      end;
      if (a[i] > m) then
        m := a[i];
    end;
    if m2 * m7 > m14 * m then
      exit(m2 * m7)
    else
      exit(m14 * m);
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
  N := 10;
  randomize();
  for j := 1 to 1000000 do
  begin
    for i := 1 to N do
      a[i] := random(90) + 1;
    o := optimal();
    s := simple();
    if s <> o then begin
      writeln('error');
      optimal();
    end;
  end;
  writeln('done');
  readln();
end.
