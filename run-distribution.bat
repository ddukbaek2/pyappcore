@echo off
rem wheel 빌드 후 PyPi에 배포. (Windows)

rem .venv\Scripts\activate

python --version
python -m ensurepip --upgrade >NUL 2>&1
python -m pip install --upgrade pip >NUL 2>&1
python -m pip install --r requirements.txt >NUL 2>&1
python -m pip list

if exist "build" rmdir /s /q "build" >NUL 2>&1
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info" >NUL 2>&1
if exist "dist" rmdir /s /q "dist" >NUL 2>&1

python build.py sdist bdist_wheel >NUL 2>&1

twine upload -u __token__ -p %PYPI_API_TOKEN% dist/*

if exist "build" rmdir /s /q "build"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"
rem if exist "dist" rmdir /s /q "dist"