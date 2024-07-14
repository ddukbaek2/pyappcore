:: @echo off
chcp 65001
:: #------------------------------------------------------------------------
:: # PYPI에 배포. (Windows)
:: #------------------------------------------------------------------------

:: 빌드.
call run-build.bat

:: 업로드.
:: dist 오류 남.
::twine upload --repository-url https://upload.pypi.org/legacy --USERNAME __token__ --PASSWORD %PYPI_API_TOKEN% dist/*

:: 인증키 요구함.
::twine upload dist/*


set PYPIRCFILEPATH=%USERPROFILE%\.pypirc
if not exist "%PYPIRCFILEPATH%" (
    echo ".pypirc not found."
    exit /b 1
)

twine upload -r pypi dist/*

:: 빌드 파일 제거.

:: call run-clean.bat