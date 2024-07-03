#------------------------------------------------------------------------
# 참조 모듈 목록.
#------------------------------------------------------------------------
from __future__ import annotations
import builtins
import sys
from pyappcore import Launching, IsBuild


#------------------------------------------------------------------------
# 전역 상수 목록.
#------------------------------------------------------------------------
SEMICOLON : str = ";"


#------------------------------------------------------------------------
# 파일 진입점.
#------------------------------------------------------------------------
if __name__ == "__main__":
	builtins.print("__launcher__")

	try:
		# if IsBuild():
		# 	# # 참조 모듈 종속성 추가.
		# 	# import __pyappcore_include_in_build__ #type: ignore

		# 	# 빌드시 두번째 인자는 심볼목록.
		# 	import __pycore_symbols_in_build__ #type: ignore
		# 	modulesString = repr(sys.modules)
		# 	builtins.print(f"modulesString={modulesString}")

		# 	symbols : str = SEMICOLON.join(__pycore_symbols_in_build__.SYMBOLS)
		# 	sys.argv.insert(1, symbols)
		# 	if "__pycore_symbols_in_build__" in sys.modules:
		# 		builtins.print("__pycore_symbols_in_build__")
		# 	else:
		# 		builtins.print("not found __pycore_symbols_in_build__")
		# else:
		# 	# 빌드시 두번째 인자는 심볼목록.
		# 	import __pycore_symbols_in_build__ #type: ignore
		# 	modulesString = repr(sys.modules)
		# 	builtins.print(f"modulesString={modulesString}")

		# 	if "__pycore_symbols_in_build__" in sys.modules:
		# 		builtins.print("__pycore_symbols_in_build__")
		# 	else:
		# 		builtins.print("not found __pycore_symbols_in_build__")
						
		exitCode : int = Launching("main", "Main")
		sys.exit(exitCode)
	except Exception as exception:
		builtins.print(exception)
		sys.exit(1)