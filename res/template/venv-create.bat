@echo off
:: #------------------------------------------------------------------------
:: # 가상 환경 생성. (Windows)
:: #------------------------------------------------------------------------
echo __venv-create.bat__

:: 기존 가상 환경 제거.
call venv-destroy.bat

:: 새로운 가상 환경 생성.
"%PYTHONFILEPATH%" -m venv "%VENVNAME%"

:: 가상 환경 활성화.
call venv-enable.bat

:: 패키지 목록 설치.
call venv-pip.bat