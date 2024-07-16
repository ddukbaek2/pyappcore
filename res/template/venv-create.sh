#!/bin/bash python3
#------------------------------------------------------------------------
# 가상 환경 생성. (Linux, MacOS)
#------------------------------------------------------------------------
echo "__venv-create.sh__"

# 우분투.
if [ "$OSNAME" == "LINUX_UBUNTU" ]; then
    # 파이썬 3.10 및 가상 환경을 리눅스 시스템 패키지로 설치.
    sudo apt update
    sudo apt install python3.10
    sudo apt install python3.10-venv
# 맥.
elif [ "$OSNAME" == "MACOS" ]; then
    # 홈브류 기반.
# 그 외.
else
    # 일단 무시.
fi

# 기존 가상 환경 제거.
source "venv-destroy.sh"

# 신규 가상 환경 생성.
python3 -m venv "$VENVPATH"

# 가상 환경 활성화.
source "venv-enable.sh"

# 패키지 목록 설치.
source "venv-pip.sh"