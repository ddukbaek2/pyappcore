#!/bin/bash python3
#--------------------------------------------------------------------------------
# 프로젝트 별 추가 경로 설정. (Linux, MacOS)
#--------------------------------------------------------------------------------
echo "__project-path.sh__"

# 파이썬 인터프리터 경로.
# export PYTHONFILEPATH="C:/Program Files/Blender Foundation/Blender 4.0/4.0/python/bin/python.exe"

# FBX PYTHON SDK 라이브러리 이름.
export FBXSDKFILENAME="fbx-2020.3.7-cp310-none-win_amd64.whl"

# FBX PYTHON SDK 라이브러리 경로.
export FBXSDKFILEPATH="$LIBSPATH/$FBXSDKFILENAME"

# FBX PYTHON SDK 라이브러리 다운로드 경로.
export FBXSDKFILEURL="https://altavagroup.synology.me/conversion/download/$FBXSDKFILENAME"

# 빌드 파일 이름.
export BUILDFILENAME="ConversionFBXTool"

# 빌드 파일 경로. 
export BUILDFILEPATH="$BUILDBINPATH/$BUILDFILENAME"

#export 빌드시 CLI 감추기 여부 설정.
export BUILD_NOCONSOLE=false