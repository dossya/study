@echo off
fpc.exe simple.pas -MObjFPC
for /l %%x in (0, 1, 3) do (
simple.exe < tests\0%%x > tests\0%%x.out
fc tests\0%%x.a tests\0%%x.out )
del simple.exe simple.o tests\*.out  
