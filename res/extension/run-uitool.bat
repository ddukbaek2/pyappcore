@echo off
:: #--------------------------------------------------------------------------------
:: # QT UI Designer 도구 실행. (Windows)
:: #--------------------------------------------------------------------------------

:: 패키지 목록 설치.
call venv-pip.bat

:: UI 편집 도구 경로 설정.
set QTUITOOLFILEPATH=%VENVSITEPACKAGESPATH%\qt5_applications\Qt\bin\designer.exe

:: UI 편집 도구 실행.
call "%QTUITOOLFILEPATH%"