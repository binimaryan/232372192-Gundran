@echo off
setlocal enabledelayedexpansion

rem Prompt the user for time in 24-hour format
set /p time_24=Enter time in 24-hour format (HH:MM): 

rem Extract hours and minutes from the input
for /f "tokens=1,2 delims=:" %%a in ("%time_24%") do (
    set hour_24=%%a
    set minute=%%b
)

rem Convert hours to integer
set /a hour_24=%hour_24%

rem Determine AM or PM and convert to 12-hour format
if %hour_24% GEQ 12 (
    set period=PM
    if %hour_24% GTR 12 set /a hour_24=hour_24-12
) else (
    set period=AM
    if %hour_24%==0 set hour_24=12
)

rem Display the 12-hour formatted time
if %minute% LSS 10 (set minute=0%minute%)

echo %hour_24%:%minute% %period%

endlocal
pause
