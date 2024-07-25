#!/bin/bash python3
#--------------------------------------------------------------------------------
# 단위 테스트 실행. (Linux, MacOS)
#--------------------------------------------------------------------------------
echo "__pyappcore-tests.sh__"

# 가상 환경 활성화.
source "venv-enable.bat"

# 경로 설정.
source "pyappcore-path.bat"

# 단위 테스트 스크립트 실행.
python3 "$TESTSPATH/__main__.py"