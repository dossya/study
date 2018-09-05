program tests_gen;

var
  f: TextFile;
  a: array [1..1000] of integer;
  O, N, R: integer;
  i, j, k, t: integer;

begin
  readln(N);
  R := 0;

  for k := 0 to 3 do
  begin
    for i := 0 to N - 1 do
    begin
      a[i] := random(50) + 1;
      writeln(a[i]);
      if k = 0 then
        AssignFile(f, '00');
      if k = 1 then
        AssignFile(f, '01');
      if k = 2 then
        AssignFile(f, '02');
      if k = 3 then
        AssignFile(f, '03');
      append(f);
      Writeln(f, a[i]);
      Close(f);
    end;

    for t := 0 to N - 2 do
      for j := t + 1 to N - 1 do
        if (a[t] * a[j] mod 14 = 0) and (a[t] * a[j] > R) then
          R := a[t] * a[j];
    readln(O);
    while (O <> R) do
      readln(O);
    if k = 0 then
      AssignFile(f, '00.a');
    if k = 1 then
      AssignFile(f, '01.a');
    if k = 2 then
      AssignFile(f, '02.a');
    if k = 3 then
      AssignFile(f, '03.a');
    append(f);
    Writeln(f, R);
    Close(f);
    R := 0;
  end;
  readln();
end.
