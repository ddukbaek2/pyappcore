@echo off
rem wheel 빌드.

rem .venv\Scripts\activate

pip install -r requirements.txt

if exist "build" rmdir /s /q "build"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"
if exist "dist" rmdir /s /q "dist"

python build.py sdist bdist_wheel

if exist "build" rmdir /s /q "build"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"
del /q "dist\*.gz"