@echo off
rem unittest 패키지를 활용한 유닛테스트. (Windows)

call run-pip.bat

python -m unittest discover -s tests