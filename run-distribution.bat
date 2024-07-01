@echo off
rem wheel 빌드 후 PyPi에 배포. (Windows)

rem .venv\Scripts\activate

python --version
python -m ensurepip --upgrade
pip install --upgrade pip
pip install --r requirements.txt
pip list


if exist "build" rmdir /s /q "build"
if exist "dist" rmdir /s /q "dist"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"

python build.py sdist bdist_wheel >NUL 2>&1

rem set TWINE_USERNAME=__token__
rem set TWINE_PASSWORD=
twine upload dist/*
set TWINE_USERNAME=
set TWINE_PASSWORD=

if exist "build" rmdir /s /q "build"
if exist "dist" rmdir /s /q "dist"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"