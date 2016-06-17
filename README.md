# Krita-Win-Build-Tools
It's a helper in build KDE/Krita on MSVC-14.0-x64.

## Depends
- Microsoft Visual Studio 2015 Community Edition
- Python2 (add to %path%)
- Qt-5.6-msvc2015_64 (add to %path%)
- Git (add to %path%)
- Cmake (add to %path%)

## Build
Create BUILDROOT & clone package
!Warning path should not contain spaces and characters outside ansi-table!
```
cd c:\
mkdir kde && cd kde
git clone https://github.com/PtaxLaine/KritaWinBuildTools
cd KritaWinBuildTools
git submodule init
git submodule update
```

Also you can try update Krita to actual master commit.
```
cd src
git checkout master
cd ..
```

Call vcvars64.bat, default path "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\amd64\vcvars64.bat"

Run prebuild.bat for apply git patch and create build directories.

Run build_ext.bat for build src/3rdparty

Run build_krita.bat for build Krita. Krita has been installed into ./install/

set QT_PLUGIN_PATH=PATH_TO_YOU_QT\msvc2015_64\plugins

Complited!
Krita has been installed to ./src/bin/krita.exe

If Krita crash after launch with code 0xc000007b, you need to replace all Qt*.dll files in ./install/bin to you Qt files.

You can run ./src/packaging/windows/makepkg.bat for make Krita package. (see official doc for additional information)
