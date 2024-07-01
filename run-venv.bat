@echo off

rem 가상환경 설정. (Windows)
rem 그냥 VSCODE에서 시키는대로 하자

set VIRTUALENVIRONMENTPATH=%~dp0.venv

where python

python -m venv .venv

.venv\Scripts\activate.bat

python --version
python -m ensurepip --upgrade
python -m pip install --upgrade pip
python -m pip install --r requirements.txt
python -m pip list

