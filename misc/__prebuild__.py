#------------------------------------------------------------------------
# 참조 모듈 목록.
#------------------------------------------------------------------------
from __future__ import annotations
import builtins
import sys
import os
import __pyappcore_dependencies_in_build__ #type: ignore
from pyappcore import make_util


#------------------------------------------------------------------------
# 전역 상수 목록.
#------------------------------------------------------------------------
SEMICOLON : str = ";"
CURRENTFILEPATH : str = os.path.abspath(__file__)
CURRENTPATH : str = os.path.dirname(CURRENTFILEPATH).replace("\\", "/")
ROOTPATH : str = os.path.dirname(CURRENTPATH).replace("\\", "/")
SRCPATH : str = f"{ROOTPATH}/src"


#------------------------------------------------------------------------
# 파일 진입점.
#------------------------------------------------------------------------
if __name__ == "__main__":
	builtins.print("__prebuild__")
	
	# 1. 바이너리 빌드시 VSCODE 상의 심볼을 읽을 수 있도록 코드 생성.
	vscodeSettings = make_util.GetVisualStudioCodeSettings(ROOTPATH)
	if vscodeSettings:
		symbolsString : str = vscodeSettings["launcher"]["build"]["symbols"]
		symbols : list[str] = symbolsString.split(SEMICOLON)
		make_util.CreateSymbolsInBuildToFile(symbols, CURRENTPATH)

	# 2. 바이너리 빌드시 pyinstaller에 포함시키기 위해 의존성이 있는 다른 소스 폴더 추가 및 저장.
	make_util.CreateDependenciesInBuildToFile([SRCPATH], CURRENTPATH)