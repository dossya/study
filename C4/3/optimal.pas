program optimal;

const
  NLim = 30;
var
  a: array [1..NLim] of integer;
  N, R: integer;
  i: integer;

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

begin
  readln(N);
  for i := 1 to N do
    readln(a[i]);
  writeln(optimal());

end.
