@echo off
rem wheel 빌드. (Windows)

rem .venv\Scripts\activate

python --version
python -m ensurepip --upgrade
pip install --upgrade pip
pip install --r requirements.txt
pip list

if exist "build" rmdir /s /q "build"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"
if exist "dist" rmdir /s /q "dist"

python build.py sdist bdist_wheel

if exist "build" rmdir /s /q "build"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"
del /q "dist\*.gz"