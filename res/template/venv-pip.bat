@echo off
rem #------------------------------------------------------------------------
rem # 패키지 목록 설치. (Windows)
rem #------------------------------------------------------------------------
echo __venv-pip.bat__

rem 경로 설정.
call pyappcore-path.bat

rem 패키지 설치용 파일 경로 설정.
set REQUIREMENTSFILEPATH=%PROJECTPATH%\requirements.txt

rem 패키지 설치.
python --version
python -m ensurepip --upgrade >nul 2>nul
python -m pip install --upgrade pip >nul 2>nul
python -m pip install --upgrade -r "%REQUIREMENTSFILEPATH%" >nul 2>nul

rem 각 프로젝트 별 패키지 목록 추가 설치.
call project-pip.bat

rem 현재 가상환경에 설치된 모든 패키지 확인.
python -m pip list