program project1;

var
  i, j, m: integer;
  k, n: longint;
  t: array [1..200000] of longint;

begin
  n:=200000;
  readln(t[1]);
  for i := 2 to n do
  begin
    readln(t[i]);
    for j := 2 to i do
      if (t[i] >= t[j - 1]) then
      begin
        m := t[j - 1];
        t[j - 1] := t[i];
        t[i] := m;
      end;
  end;
    writeln(t[(k mod 2)+(k div 2) + 1] - t[n - (k div 2)]);
  readln();
end.
