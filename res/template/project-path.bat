@echo off
:: #------------------------------------------------------------------------
:: # 프로젝트 별 추가 경로 설정. (Windows)
:: #------------------------------------------------------------------------

:: 파이썬 인터프리터 경로.
:: set PYTHONFILEPATH=C:\Program Files\Blender Foundation\Blender 4.0\4.0\python\bin\python.exe
set PYTHONFILEPATH=C:\Users\dagraac\AppData\Local\Programs\Python\Python312\python.exe

:: FBXSDK 라이브러리 이름.
:: set FBXSDKFILENAME=fbx-2020.3.7-cp310-none-win_amd64.whl

:: FBXSDK 라이브러리 경로.
:: set FBXSDKFILEPATH=%LIBSPATH%\%FBXSDKFILENAME%

:: FBXSDK 라이브러리 다운로드 경로.
:: set FBXSDKFILEURL=%LIBSPATH%\%FBXSDKFILENAME%

:: 빌드 파일 이름.
set BUILDFILENAME=pyappcore_project_template

:: 빌드 파일 경로. 
set BUILDFILEPATH=%BUILDBINPATH%\%BUILDFILENAME%.exe

:: 빌드시 CLI 감추기 여부 설정.
set BUILD_NOCONSOLE=false