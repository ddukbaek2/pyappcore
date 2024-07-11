@echo off
rem #------------------------------------------------------------------------
rem # 프로젝트 경로 설정. (Windows)
rem #------------------------------------------------------------------------

set PROJECTPATH=%~dp0
set PROJECTPATH=%PROJECTPATH:~0,-1%
for /f "tokens=1 delims=:" %%a in ("%PROJECTPATH%") do set "PROJECTDRIVE=%%a:"

rem 가상환경 관련 경로 설정.
set VENVPATH=%PROJECTPATH%\.venv
set VENVPYTHONPATH=%VENVPATH%\Script
set VENVSITEPACKAGESPATH=%VENVPATH%\Lib\site-packages

rem 프로젝트 세부 경로 설정.
set VSCODEPATH=%PROJECTPATH%\.vscode
set BUILDBINPATH=%PROJECTPATH%\build\bin
set BUILDSPECPATH=%PROJECTPATH%\build\spec
set BUILDWORKPATH=%PROJECTPATH%\build\work
set HINTSPATH=%PROJECTPATH%\hints
set LIBSPATH=%PROJECTPATH%\libs
set LOGSPATH=%PROJECTPATH%\logs
set RESPATH=%PROJECTPATH%\res
set SOURCEPATH=%PROJECTPATH%\src
set TESTSPATH=%PROJECTPATH%\tests
set WORKSPACEPATH=%PROJECTPATH%\workspace

rem 오류와 메시지 끄기.
set REDIRECT=>nul 2>nul

rem 콘솔창 보이기 설정.
set BUILD_NOCONSOLE="false"

rem 프로젝트 별 추가 경로 설정.
call project-path.bat