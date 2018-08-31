program project1;

const
  N = 3;
var
  a: array [1..N] of integer;
  k, i: integer;
begin
  for i := 1 to N do
    readln(a[i]);
  for i := 1 to N-1 do
    if a[i]>a[i+1] then begin
    k:=a[i];
    a[i]:=a[i+1];
    a[i+1]:=k;
    end;
    writeln(a[2]);
    readln();
end.
