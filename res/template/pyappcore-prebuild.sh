#!/bin/bash python3
#--------------------------------------------------------------------------------
# 빌드 전처리 실행. (Linux, MacOS)
#--------------------------------------------------------------------------------
echo "__pyappcore-prebuild.sh__"

# 가상 환경 활성화.
source "venv-enable.sh"

# 패키지 목록 설치.
source "venv-pip.sh"

# 빌드 전 처리 스크립트 실행.
python3 "$SOURCEPATH/__prebuilder__.py"