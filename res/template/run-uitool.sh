#!/bin/bash python3
#--------------------------------------------------------------------------------
# 프로젝트 서비스 (소스) 실행. (Linux, MacOS)
#--------------------------------------------------------------------------------
echo "__run-uitool.sh__"

# 패키지 목록 설치.
source "venv-pip.sh"

# UI 편집 도구 경로 설정.
export QTUITOOLFILEPATH="/usr/lib/qt5/bin/designer"

# UI 편집 도구 실행.
"$QTUITOOLFILEPATH"