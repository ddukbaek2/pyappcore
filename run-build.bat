@echo off
:: #------------------------------------------------------------------------
:: # 라이브러리 빌드. (Windows)
:: #------------------------------------------------------------------------

:: 패키지 받기.
call venv-pip.bat

:: 빌드 파일 제거.
call run-clean.bat

:: 라이브러리 빌드.
python build.py sdist bdist_wheel >NUL 2>&1

:: 업로드 빌드 파일 외 불필요 빌드 파일 제거.
if exist "build" rmdir /s /q "build"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"

:: del /q "dist\*.gz"