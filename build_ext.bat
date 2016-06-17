@echo off

setlocal

call build_variables.bat

cd %builder_ext_build%

cmake %builder_src%/3rdparty -DEXTERNALS_DOWNLOAD_DIR=%builder_download% -DINSTALL_ROOT=%builder_install% -G "Visual Studio 14 Win64" && ^
cmake --build . --config RelWithDebInfo --target ext_patch && ^
cmake --build . --config RelWithDebInfo --target ext_png2ico && ^
cmake --build . --config RelWithDebInfo --target ext_pthreads && ^
cmake --build . --config RelWithDebInfo --target ext_boost && ^
cmake --build . --config RelWithDebInfo --target ext_eigen3 && ^
cmake --build . --config RelWithDebInfo --target ext_exiv2 && ^
cmake --build . --config RelWithDebInfo --target ext_fftw3 && ^
cmake --build . --config RelWithDebInfo --target ext_ilmbase && ^
cmake --build . --config RelWithDebInfo --target ext_jpeg && ^
cmake --build . --config RelWithDebInfo --target ext_lcms2 && ^
cmake --build . --config RelWithDebInfo --target ext_ocio && ^
cmake --build . --config RelWithDebInfo --target ext_openexr && ^
cmake --build . --config RelWithDebInfo --target ext_png && ^
cmake --build . --config RelWithDebInfo --target ext_tiff && ^
cmake --build . --config RelWithDebInfo --target ext_gsl && ^
cmake --build . --config RelWithDebInfo --target ext_libraw && ^
cmake --build . --config RelWithDebInfo --target ext_openjpeg && ^
cmake --build . --config RelWithDebInfo --target ext_kwindowsystem && ^
cmake --build . --config RelWithDebInfo --target ext_freetype rem && ^
rem cmake --build . --config RelWithDebInfo --target ext_poppler && ^
rem cmake --build . --config RelWithDebInfo --target ext_vc

endlocal

pause
