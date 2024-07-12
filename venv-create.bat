@echo off
rem #------------------------------------------------------------------------
rem # 가상환경 생성. (Windows)
rem #------------------------------------------------------------------------

rem 기존 가상환경 제거.
call venv-destroy.bat

rem 가상환경 생성.
"%PYTHONFILEPATH%" -m venv "%VENVPATH%"

rem 패키지 목록 설치.
call venv-pip.bat