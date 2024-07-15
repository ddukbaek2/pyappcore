@echo off
rem #------------------------------------------------------------------------
rem # 기존 가상 환경 제거. (Windows)
rem #------------------------------------------------------------------------
echo __venv-destroy.bat__

rem 경로 설정.
call pyappcore-path.bat

rem 제거.
if exist "%VENVPATH%" ( rmdir /s /q "%VENVPATH%" )