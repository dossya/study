@echo off
fpc.exe C:\Projects\study\olymp\hse\2018\demo1\A\optimal.pas -MObjFPC
for /l %%x in (0, 1, 3) do (
optimal.exe < tests\0%%x > tests\0%%x.out
fc tests\0%%x.a tests\0%%x.out )
del optimal.exe optimal.o tests\*.out  
