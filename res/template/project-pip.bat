@echo off
:: #--------------------------------------------------------------------------------
:: # 프로젝트 별 추가 패키지 설치. (Windows)
:: #--------------------------------------------------------------------------------
echo __pyappcore-pip.bat__

:: FBXSDK 다운로드.
if not exist "%FBXSDKFILEPATH%" (
	echo "Not Exists '%FBXSDKFILEPATH%'"
	curl -o "%FBXSDKFILEPATH%" "%FBXSDKFILEURL%"
)

:: FBXSDK 설치.
python -m pip install "%FBXSDKFILEPATH%" >nul 2>nul