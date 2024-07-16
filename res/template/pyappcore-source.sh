#!/bin/bash python3
#------------------------------------------------------------------------
# 프로젝트 소스 실행. (Linux, MacOS)
#------------------------------------------------------------------------
echo "__pyappcore-source.sh__"

# 가상 환경 활성화.
source "venv-enable.sh"

# 빌드 전 처리 실행.
source "pyappcore-prebuild.sh"

# 실행 스크립트 실행.
python3 "$SOURCEPATH/__launcher__.py" "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8" "$9"