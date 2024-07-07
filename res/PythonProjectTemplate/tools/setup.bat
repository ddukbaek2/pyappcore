@echo off

set PYTHONPATH=C:\Program Files\Python312
set PYTHONEXEPATH=%PYTHONPATH%\python.exe
set PROJECTPATH=%1
set DOTVSCODEPATH=%PROJECTPATH%\.vscode
set TOOLSPATH=%PROJECTPATH%\tools
set RESPATH=%PROJECTPATH%\res
set LIBSPATH=%PROJECTPATH%\libs
set BUILDBINPATH=%PROJECTPATH%\build\bin
set BUILDSPECPATH=%PROJECTPATH%\build\spec
set TESTSPATH=%PROJECTPATH%\tests
set SOURCEPATH=%PROJECTPATH%\src
set HINTSPATH=%PROJECTPATH%\hints
set REQUIREMENTSFILEPATH=%PROJECTPATH%\requirements.txt

for /f "tokens=1 delims=:" %%a in ("%PYTHONPATH%") do set "PYTHONDRIVE=%%a:
for /f "tokens=1 delims=:" %%a in ("%PROJECTPATH%") do set "PROJECTDRIVE=%%a:"

%PYTHONDRIVE%
cd "%PYTHONPATH%"

"%PYTHONEXEPATH%" --version
"%PYTHONEXEPATH%" -m ensurepip --upgrade >nul 2>nul
"%PYTHONEXEPATH%" -m pip install --upgrade pip >nul 2>nul
"%PYTHONEXEPATH%" -m pip install --user -r "%REQUIREMENTSFILEPATH%" >nul 2>nul
"%PYTHONEXEPATH%" -m pip list

"%PYTHONEXEPATH%" "%SOURCEPATH%\__prebuild__.py"