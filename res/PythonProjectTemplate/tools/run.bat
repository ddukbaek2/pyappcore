@echo off

set PROJECTPATH=%1
set TOOLSPATH=%PROJECTPATH%\tools

for /f "tokens=1 delims=:" %%a in ("%PROJECTPATH%") do set "PROJECTDRIVE=%%a:"

%PROJECTDRIVE%
cd "%TOOLSPATH%"
call setup.bat %PROJECTPATH%

%PYTHONDRIVE%
cd "%PYTHONPATH%"
python.exe --background --python "%2" "%3" "%4" "%5" "%6" "%7" "%8" "%9"