@echo off

rem .venv\Scripts\activate

if exist "output" rmdir /s /q "output"
if exist "build" rmdir /s /q "build"
if exist "dist" rmdir /s /q "dist"
if exist "pylonlib.egg-info" rmdir /s /q "pylonlib.egg-info"

python release.py sdist bdist_wheel >NUL 2>&1