@echo off
:: #--------------------------------------------------------------------------------
:: # 가상 환경 활성화. (Windows)
:: #--------------------------------------------------------------------------------
echo __venv-enable.bat__

:: 경로 설정.
call pyappcore-path.bat

:: 가상 환경 활성화.
.venv\Scripts\activate.bat