@echo off
:: #--------------------------------------------------------------------------------
:: # 환경변수 설정. (Windows)
:: #--------------------------------------------------------------------------------
echo __pyappcore-path.bat__

:: 프로젝트 경로 설정.
set PROJECTPATH=%~dp0
set PROJECTPATH=%PROJECTPATH:~0,-1%
for /f "tokens=1 delims=:" %%a in ("%PROJECTPATH%") do set "PROJECTDRIVE=%%a:"

:: 가상환경 관련 경로 설정.
set VENVPATH=%PROJECTPATH%\.venv
set VENVPYTHONPATH=%VENVPATH%\Script
set VENVSITEPACKAGESPATH=%VENVPATH%\Lib\site-packages

:: 프로젝트 세부 경로 설정.
set VSCODEPATH=%PROJECTPATH%\.vscode
set BUILDPATH=%PROJECTPATH%\build
set BUILDBINPATH=%BUILDPATH%\bin
set BUILDSPECPATH=%BUILDPATH%\spec
set BUILDWORKPATH=%BUILDPATH%\work
set HINTSPATH=%PROJECTPATH%\hints
set LIBSPATH=%PROJECTPATH%\libs
set LOGSPATH=%PROJECTPATH%\logs
set RESPATH=%PROJECTPATH%\res
set SOURCEPATH=%PROJECTPATH%\src
set TESTSPATH=%PROJECTPATH%\tests
set WORKSPACEPATH=%PROJECTPATH%\workspace

:: 콘솔창 보이기 설정.
set BUILD_NOCONSOLE=false

:: 프로젝트 별 추가 경로 설정.
call project-path.bat