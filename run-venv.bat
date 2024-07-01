@echo off

rem 가상환경 설정. (Windows)
rem 됐다 안됐다 하는걸 보니 노답이다... 그냥 VSCODE에서 제공해주는 방법으로 하자...

where python

rmdir /s /q .venv
python -m venv .venv

call run-pip.bat