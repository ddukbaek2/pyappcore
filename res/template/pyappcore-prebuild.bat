@echo off
:: #------------------------------------------------------------------------
:: # 빌드 전처리 실행. (Windows)
:: #------------------------------------------------------------------------
echo __pyappcore-prebuild.bat__

:: 가상 환경 활성화.
call venv-enable.bat

:: 패키지 목록 설치.
call venv-pip.bat

:: 빌드 전 처리 스크립트 실행.
python "%SOURCEPATH%\__prebuilder__.py"