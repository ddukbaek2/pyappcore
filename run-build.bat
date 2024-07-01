@echo off
rem wheel 빌드. (Windows)

call run-pip.bat
call run-clean.bat

python build.py sdist bdist_wheel

if exist "build" rmdir /s /q "build"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"
rem del /q "dist\*.gz"