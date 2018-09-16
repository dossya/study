for /l %%x in (0, 1, 3) do (
echo optimal.exe < 0%%x > 0%%x.out
fc 00.a 00.out )  
