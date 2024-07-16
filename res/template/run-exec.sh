#!/bin/bash python3
#------------------------------------------------------------------------
# 가상 환경 생성. (Linux, MacOS)
#------------------------------------------------------------------------
echo "__run-exec.sh__"

# 빌드 된 바이너리 파일 존재 여부 확인.
if [ ! -f "$BUILDFILEPATH" ]; then
    echo "'%BUILDFILEPATH%' 파일이 존재하지 않습니다."
    exit 1
fi

# 가상 환경 생성.
source "pyappcore-exec.sh"


:: 빌드 된 바이너리 파일 실행.
"%BUILDFILEPATH%" "all"

pause