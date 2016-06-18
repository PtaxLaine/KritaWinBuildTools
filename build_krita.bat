@echo off

setlocal

call build_variables.bat

cd %builder_build%

if not exist "%builder_install%/include/boost" (mklink /J "%builder_install%/include/boost" "%builder_install%/include/boost-1_55/boost")

cmake ..\src -G "Visual Studio 14 Win64" ^
-DADDITIONAL_INCLUDE_DIR=%builder_install%/include ^
-DBoost_DEBUG=OFF -DBOOST_INCLUDEDIR=%builder_install%/include/boost-1_55 -DBOOST_DEBUG=ON -DBOOST_ROOT=%builder_install% -DBOOST_LIBRARYDIR=%builder_install%/lib ^
-DCMAKE_INSTALL_PREFIX=%builder_install% -DCMAKE_PREFIX_PATH=%builder_install% ^
-DCMAKE_BUILD_TYPE=RelWithDebInfo ^
-DBUILD_TESTING=OFF ^
-DKDE4_BUILD_TESTS=OFF ^
-DHAVE_MEMORY_LEAK_TRACKER=OFF ^
-DPACKAGERS_BUILD=ON ^
-Wno-dev -DDEFINE_NO_DEPRECATED=1

cmake --build . --config RelWithDebInfo --target INSTALL -- /m

endlocal

pause
