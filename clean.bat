@echo off
for /r %%i in (*.o) do del /q %%i

for /r %%i in (*.exe) do del /q %%i

rd /s /q target