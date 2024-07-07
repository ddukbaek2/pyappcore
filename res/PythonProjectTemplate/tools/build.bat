@echo off

set PROJECTPATH=%1
set TOOLSPATH=%PROJECTPATH%\tools

for /f "tokens=1 delims=:" %%a in ("%PROJECTPATH%") do set "PROJECTDRIVE=%%a:"

%PROJECTDRIVE%
cd "%TOOLSPATH%"
call setup.bat %PROJECTPATH%

%PYTHONDRIVE%
cd "%PYTHONPATH%"

set BUILD="%PYTHONEXEPATH%" -m PyInstaller^
 --clean^
 --paths "%RESPATH%"^
 --add-data "%RESPATH%;res"^
 --distpath "%BUILDBINPATH%"^
 --specpath "%BUILDSPECPATH%"^
 --paths "%PROJECTPATH%"^
 --paths "%SOURCEPATH%"^
 --hidden-import __pyappcore_dependencies_in_build__^
 --name "%3"^
 --onefile "%2"

set IS_NOCONSOLE="%4"
if %IS_NOCONSOLE% == "true" (
    set BUILD=%BUILD% --noconsole
)

%BUILD%