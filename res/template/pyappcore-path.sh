#!/bin/bash python3
#--------------------------------------------------------------------------------
# 환경변수 설정. (Linux, MacOS)
#--------------------------------------------------------------------------------
echo "__pyappcore-path.sh__"

# 운영체제 감지.
export OSNAME="UNKNOWN"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    if grep -q "Ubuntu" /etc/os-release; then
       OSNAME="LINUX_UBUNTU"
    elif grep -q "Fedora" /etc/os-release; then
        OSNAME="LINUX_FEDORA"
    elif grep -q "CENTOS" /etc/os-release; then
        OSNAME="LINUX_CENTOS"
    elif grep -q "DEBIAN" /etc/os-release; then
        OSNAME="LINUX_DEBIAN"
    else
        OSNAME="LINUX_UNKNOWN"
    fi
elif  [[ "$OSTYPE" == "darwin"* ]]; then
    OSNAME="MACOS"
if

# 프로젝트 경로 설정.
export PROJECTPATH=$(dirname "${BASH_SOURCE[0]}")
PROJECTPATH=$(cd "$SCRIPT_DIR" && pwd)

# 가상 환경 관련 경로 설정.
export VENVNAME=".venv"
export VENVPATH=$PROJECTPATH/$VENVNAME
export VENVPYTHONPATH=$VENVPATH/Script
export VENVSITEPACKAGESPATH="$VENVPATH/Lib/site-packages"

# 프로젝트 세부 경로 설정.
export VSCODENAME=".vscode"
export VSCODEPATH="$PROJECTPATH/$VSCODENAME"
export BUILDPATH="$PROJECTPATH/build"
export BUILDBINPATH="$BUILDPATH/bin"
export BUILDSPECPATH="$BUILDPATH/spec"
export BUILDWORKPATH="$BUILDPATH/work"
export HINTSPATH="$PROJECTPATH/hints"
export HOOKSPATH="$PROJECTPATH/hooks"
export LIBSPATH="$PROJECTPATH/libs"
export LOGSPATH="$PROJECTPATH/logs"
export RESPATH="$PROJECTPATH/res"
export SOURCEPATH="$PROJECTPATH/src"
export TESTSPATH="$PROJECTPATH/tests"
export WORKSPACEPATH="$PROJECTPATH/workspace"

# 콘솔창 보이기 설정.
export BUILD_NOCONSOLE=false

# 프로젝트 별 추가 경로 설정.
source "project-path.sh"