@echo off
:: #--------------------------------------------------------------------------------
:: # 프로젝트 소스 실행. (Windows)
:: #--------------------------------------------------------------------------------
echo __pyappcore-source.bat__

:: 가상 환경 활성화.
call venv-enable.bat

:: 빌드 전 처리 실행.
call pyappcore-prebuild.bat

:: 실행 스크립트 실행.
python "%SOURCEPATH%\__launcher__.py" "%1" "%2" "%3" "%4" "%5" "%6" "%7" "%8" "%9"