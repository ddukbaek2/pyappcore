@echo off
rem wheel 빌드 후 PyPi에 배포 (토큰 입력 필요).

rem .venv\Scripts\activate

python --version
python -m ensurepip --upgrade
python -m pip install --upgrade pip
python -m pip install --user -r requirements.txt
python -m pip list

if exist "build" rmdir /s /q "build"
if exist "dist" rmdir /s /q "dist"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"

python build.py sdist bdist_wheel >NUL 2>&1

rem set TWINE_USERNAME=__token__
rem set TWINE_PASSWORD=
twine upload dist/*
rem set TWINE_USERNAME=
rem set TWINE_PASSWORD=

if exist "build" rmdir /s /q "build"
if exist "dist" rmdir /s /q "dist"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"