@echo off
:: #------------------------------------------------------------------------
:: # 패키지 목록 설치. (Windows)
:: #------------------------------------------------------------------------

python --version
python -m ensurepip --upgrade >NUL 2>&1
python -m pip install --upgrade pip >NUL 2>&1
python -m pip install -r requirements.txt
python -m pip list