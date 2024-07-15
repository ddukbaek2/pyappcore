@echo off
:: #------------------------------------------------------------------------
:: # 바이너리 빌드. (Windows)
:: #------------------------------------------------------------------------
echo __pyappcore-build.bat__

rem 가상환경 활성화.
call venv-enable.bat

:: 빌드 전 처리 실행.
call pyappcore-prebuild.bat

:: 빌드 설정.
set BUILD=python -m PyInstaller^
 -F --clean^
 --paths="%SOURCEPATH%"^
 --paths="%RESPATH%"^
 --add-data "%SOURCEPATH%;src"^
 --add-data "%RESPATH%;res"^
 --distpath "%BUILDBINPATH%"^
 --specpath "%BUILDSPECPATH%"^
 --workpath "%BUILDWORKPATH%"^
 --name %BUILDFILENAME%^
 --onefile "%SOURCEPATH%\__launcher__.py"

:: 콘솔창 설정.
if "%BUILD_NOCONSOLE%" == "true" (
    echo "NOCONSOLE"
    set BUILD=%BUILD% --noconsole
)

:: 빌드 실행.
%BUILD%