program test;
var
  a, b, n, m, i, s, o: integer;
function simple(n, m, a, b:integer):integer;
var f, k, s: integer;
begin
  k := m - n;
  f := 1;
  s := 0;
  if ((k div 4) > 0) then
    f := k div 4;
  while k >= 1 do
  begin
    if ((b * f) < (a * k)) then
    begin
      s := s + b;
      k := k - 4;
    end
    else
    begin
      s := s + a;
      k := k - 1;
    end;
    if ((k div 4) > 0) then
    f := k div 4;
  end;
  exit(s);
end;

function optimal(n, m, a, b:integer):integer;
var
   k, s: integer;

begin
  s := 0;
  k := m - n;
  if (k div 4)>0 then
  if ((b * (k div 4)) < (a * k)) then
  begin
    s := b * (k div 4);
    if (a * (k mod 4)) < b then
    s := s + a *(k mod 4)
  else
    s := s + b;
  end
  else
    s := a * k;
  exit(s);

end;
begin
  for i:=1 to 100 do begin
    n:=random(50);
    m:=random(100)+1;
    a:=random(20);
    b:=random(20)+1;

    s:=(simple(n, m, a, b));
    o:=(optimal(n, m, a, b));
    if o<>s then begin
    writeln('error');
    (simple(n, m, a, b));
    (optimal(n, m, a, b));
    end;
  end;
  readln();
end.



