@echo off
:: #------------------------------------------------------------------------
:: # 프로젝트 별 추가 경로 설정. (Windows)
:: #------------------------------------------------------------------------
echo __pyappcore-path.bat__

:: 파이썬 인터프리터 경로.
set PYTHONFILEPATH=C:\Program Files\Blender Foundation\Blender 4.0\4.0\python\bin\python.exe

:: 빌드 파일 이름.
set BUILDFILENAME=pyappcore_project_template

:: 빌드 파일 경로. 
set BUILDFILEPATH=%BUILDBINPATH%\%BUILDFILENAME%.exe

:: 빌드시 CLI 감추기 여부 설정.
set BUILD_NOCONSOLE=false