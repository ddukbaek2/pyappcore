#------------------------------------------------------------------------
# 참조 모듈 목록.
#------------------------------------------------------------------------
from __future__ import annotations
import json
import os
import shutil
import sys
from pyappcore import Application


#------------------------------------------------------------------------
# 진입점.
#------------------------------------------------------------------------
def Main(arguments : list) -> int:
    Application.Log("Hello World")
    return 0