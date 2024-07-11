@echo off
rem #------------------------------------------------------------------------
rem # 라이브러리 빌드. (Windows)
rem #------------------------------------------------------------------------

rem 패키지 받기.
call venv-pip.bat

rem 빌드 파일 제거.
call project-clean.bat

rem 라이브러리 빌드.
python build.py sdist bdist_wheel

rem 업로드 빌드 파일 외 불필요 빌드 파일 제거.
if exist "build" rmdir /s /q "build"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"

rem del /q "dist\*.gz"