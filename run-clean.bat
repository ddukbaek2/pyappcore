@echo off
:: #--------------------------------------------------------------------------------
:: # 빌드 파일 제거. (Windows)
:: #--------------------------------------------------------------------------------

if exist "build" rmdir /s /q "build"
if exist "pyappcore.egg-info" rmdir /s /q "pyappcore.egg-info"
if exist "dist" rmdir /s /q "dist"

