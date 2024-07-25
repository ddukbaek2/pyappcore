#!/bin/bash python3
#--------------------------------------------------------------------------------
# 프로젝트 별 추가 패키지 설치. (Linux, MacOS)
#--------------------------------------------------------------------------------
echo "__project-pip.sh__"

# 가상 환경 활성화.
source "venv-enable.sh"

# 우분투.
if [ "$OSNAME" == "LINUX_UBUNTU" ]; then
    # QT5 개발툴을 리눅스 시스템 패키지로 설치.
    sudo apt update
    sudo apt install qttools5-dev-tools
# 맥.
elif [ "$OSNAME" == "MACOS" ]; then
    # 홈브류 기반.
# 그 외.
else
    # 일단 무시.
fi

# FBX PYTHON SDK 라이브러리 다운로드.
if [ ! -f "$FBXSDKFILEPATH" ]; then
    echo "Not Exists '$FBXSDKFILEPATH'"
    curl -o "$FBXSDKFILEPATH" "$FBXSDKFILEURL"
fi

# FBX PYTHON SDK 라이브러리 설치.
python3 -m pip install "$BPYFILEPATH"