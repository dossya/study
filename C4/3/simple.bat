for /l %%x in (0, 1, 3) do (
C:\lazarus11\fpc\3.0.4\bin\i386-win32\fpc.exe optimal.pas
optimal.exe < 0%%x > 0%%x.out
fc 0%%x.a 0%%x.out )  
