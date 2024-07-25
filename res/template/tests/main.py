#--------------------------------------------------------------------------------
# 참조 모듈 목록.
#--------------------------------------------------------------------------------
from __future__ import annotations
import builtins
import unittest
from pyappcore import *
from src import *


#--------------------------------------------------------------------------------
# 전역 상수 목록.
#--------------------------------------------------------------------------------
SEMICOLON : str = ";"
CURRENTFILEPATH : str = os.path.abspath(__file__)
TESTSPATH : str = os.path.dirname(CURRENTFILEPATH).replace("\\", "/")
ROOTPATH : str = os.path.dirname(TESTSPATH).replace("\\", "/")
SRCPATH : str = f"{ROOTPATH}/src"


#--------------------------------------------------------------------------------
# 테스트 케이스.
#--------------------------------------------------------------------------------
class Test_Project_Template(unittest.TestCase):
	#--------------------------------------------------------------------------------
	# 테스트 : 출력.
	#--------------------------------------------------------------------------------
	def test_Print(self):
		builtins.print("__tests_main__")
		builtins.print("Test_Project_Template.test_Print()")