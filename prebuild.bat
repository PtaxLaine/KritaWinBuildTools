@echo off

setlocal

call build_variables.bat


mkdir build
mkdir download
mkdir ext_build
mkdir install

cd src
git apply  --ignore-space-change --ignore-whitespace  ../patch.diff

endlocal
