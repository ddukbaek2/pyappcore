#--------------------------------------------------------------------------------
# 참조 모듈 목록.
#--------------------------------------------------------------------------------
from __future__ import annotations
from typing import Any, Final, Optional, Type, TypeVar, Union
import builtins
import json
import os
import sys
from .application import Application
from datetime import datetime as DateTime
from datetime import timedelta as TimeDelta


#--------------------------------------------------------------------------------
# 전역 상수 목록.
#--------------------------------------------------------------------------------
UTF8 : str = "utf-8"
READ : str = "r"
WRITE : str = "w"
DATETIMEFORMAT : str = "%Y-%m-%d %H:%M:%S"
PID : str = "PID"
PPID : str = "PPID"
STARTTIME : str = "STARTTIME"
UPDATETIME : str = "UPADTETIME"

#--------------------------------------------------------------------------------
# 프로세스 종료.
#--------------------------------------------------------------------------------
def Suicide(processFilePath : str) -> None:
	Finish(processFilePath)
	sys.exit(0)


#--------------------------------------------------------------------------------
# 프로세스의 시작과 업데이트 체크.
#--------------------------------------------------------------------------------
def NewAndUpdate(processFilePath : str) -> None:
	processInfo : dict = None
	isNew : bool = False

	try:
		# 프로세스 정보 파일 불러오기.
		processInfo = GetProcessInfo(processFilePath)

		# 기존 파일 존재.
		if processInfo:
			# 기존 파일의 프로세스값과 현재 프로세스값이 다르면 : 신규.
			isNew = processInfo[PID] != os.getpid()
		else:
			# 파일이 없을 때 : 신규.
			processInfo = dict()
			isNew = True
	except Exception as exception:
		# 파일 불러오기 혹은 프로세스값 획득 실패일 때 : 신규.
		processInfo = dict()
		isNew = True

	# 신규.
	if isNew:
		processInfo[PID] = os.getpid()
		processInfo[PPID] = os.getppid()
		processInfo[STARTTIME] = DateTime.now().strftime(DATETIMEFORMAT)

	# 업데이트.
	processInfo[UPDATETIME] = DateTime.now().strftime(DATETIMEFORMAT)

	# 프로세스 정보 파일 저장.
	with open(processFilePath, WRITE, UTF8) as file:
		json.dump(processInfo, file, indent = 4)


#--------------------------------------------------------------------------------
# 프로세스의 종료 처리.
#--------------------------------------------------------------------------------
def Finish(processFilePath : str) -> None:
	if os.path.exists(processFilePath):
		os.remove(processFilePath)


#--------------------------------------------------------------------------------
# 프로세스 정보 파일과 비교하여 프로세스가 돌고있는지 확인.
# - 만일 동일 프로세스일 경우 업데이트 시간을 갱신.
#--------------------------------------------------------------------------------
def IsRunning(processFilePath : str, limitSeconds : float = 60):
	try:
		# 프로세스 정보 파일 불러오기.
		processInfo = GetProcessInfo(processFilePath)

		# 기존 파일 존재.
		if processInfo:
			# 기존 파일의 프로세스값과 현재 프로세스값이 같을 때.
			if processInfo[PID] == os.getpid():
				lastUpdateTime = DateTime.strptime(processInfo[UPDATETIME], DATETIMEFORMAT)
				passedTime : TimeDelta = DateTime.now() - lastUpdateTime

				# 기록시간이 limitSeconds 이내라면 유효한 데이터.
				# 이러한 체크 방식인 이유는 갑작스러운 종료시 파일이 삭제되지 않을 수 있기 때문에.
				# 파일 유무와 프로세스 아이디 값만으로는 완벽한 체킹이 불가능.
				# 이후 다른 프로세스가 생겨났는데 그 아이디가 동일할 수도 있기 때문.
				if passedTime <= TimeDelta(seconds = limitSeconds):
					return True
		else:
			# 파일이 없을 때.
			return False
	except Exception as exception:
		# 파일 불러오기 혹은 프로세스값 획득 실패일 때.
		return False


#--------------------------------------------------------------------------------
# 프로세스 정보 파일 불러오기.
#--------------------------------------------------------------------------------
def GetProcessInfo(processFilePath : str) -> dict:
	# 기존 파일 존재.
	if os.path.isfile(processFilePath):
		# 파일 불러오기.
		with open(processFilePath, READ, UTF8) as file:
			processInfo = json.load(file)
		return processInfo
	else:
		return None