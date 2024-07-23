#!/bin/bash python3
#------------------------------------------------------------------------
# 패키지 목록 설치. (Linux, MacOS)
#------------------------------------------------------------------------
echo "__venv-pip.sh__"

# 경로 설정.
source "pyappcore-path.sh"

# 가상 환경 활성화.
source "venv-enable.sh"

# 패키지 설치용 파일 경로 설정.
export REQUIREMENTSFILEPATH="$PROJECTPATH/requirements.txt"

# 패키지 설치.
python3 --version
python3 -m ensurepip --upgrade
python3 -m pip install --upgrade pip
pip install -r "$REQUIREMENTSFILEPATH"

# 각 프로젝트 별 패키지 목록 추가 설치.
source "project-pip.sh"

# 현재 가상 환경에 설치된 모든 패키지 확인.
python3 --version
python3 -m pip list