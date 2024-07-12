@echo off
rem #------------------------------------------------------------------------
rem # PYPI에 배포. (Windows)
rem #------------------------------------------------------------------------

rem 빌드.
call run-build.bat

rem 업로드.
twine upload -u __token__ -p %PYPI_API_TOKEN% dist/*

rem 빌드 파일 제거.
call run-clean.bat