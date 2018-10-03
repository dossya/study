program optimal;

var
  i, j, m, max, min, l: integer;
  k, n: longint;
  a: array [1..200000] of longint;

begin
  readln(k, n);
  for i := 1 to n do
    readln(a[i]);
  max:=-1000;
  min:=1000;
  for j:=1 to ((k div 2) + (k mod 2)) do
  for i := 1 to n do begin
    if a[i]>=max then begin
      max := a[i];
      l:=i;
    end;
    a[l]:=-2000;
  end;

  for j:=1 to (k div 2) do
  for i := 1 to n do begin
    if a[i]<=min then begin
      min := a[i];
      l:=i;
    end;
    a[l]:=-2000;
  end;
  max:=-1000;
  min:=1000;
  for i := 1 to n do begin
    if a[i]>=max then
      max := a[i];
    if a[i]<=min then
      min := a[i];
    end;
    writeln(max-min);
  readln();
end.
