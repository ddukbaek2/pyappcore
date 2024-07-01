@echo off
rem wheel 빌드 후 PyPi에 배포. (Windows)

rem .venv\Scripts\activate

python --version
python -m ensurepip --upgrade
python -m pip install --upgrade pip
python -m pip install --r requirements.txt
python -m pip list

if exist "build" rmdir /s /q "build"
if exist "dist" rmdir /s /q "dist"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"

python build.py sdist bdist_wheel >NUL 2>&1

twine upload -u __token__ -p %PYPI_API_TOKEN% dist/*

if exist "build" rmdir /s /q "build"
if exist "dist" rmdir /s /q "dist"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"