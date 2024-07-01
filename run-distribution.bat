@echo off
rem wheel 빌드 후 PyPi에 배포. (Windows)

call run-pip.bat
call run-clean.bat
call run-build.bat

twine upload -u __token__ -p %PYPI_API_TOKEN% dist/*

call run-clean.bat