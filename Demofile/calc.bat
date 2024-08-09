@echo off
setlocal enabledelayedexpansion

rem Ask for user input
set /p number=Enter an integer: 

rem Create the reverse multiplication table
echo Reverse Multiplication Table for %number%
for /l %%i in (10, -1, 1) do (
    set /a result=number*%%i
    echo %number% x %%i = !result!
)

endlocal
pause
