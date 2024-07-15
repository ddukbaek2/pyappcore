@echo off
rem #------------------------------------------------------------------------
rem # 가상 환경 생성. (Windows)
rem #------------------------------------------------------------------------
echo __venv-create.bat__

rem 기존 가상환경 제거.
call venv-destroy.bat

rem 생성.
"%PYTHONFILEPATH%" -m venv "%VENVPATH%"

rem 가상환경 활성화.
call venv-enable.bat

rem 패키지 목록 설치.
call venv-pip.bat