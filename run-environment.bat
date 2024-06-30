@echo off

rem 가상환경 설정. (Windows)

set VENVPATH=%~dp0.venv

where python

python -m venv .venv

.\venv\Scripts\activate.bat

python --version
python -m ensurepip --upgrade
pip install --upgrade pip
pip install --r requirements.txt
pip list