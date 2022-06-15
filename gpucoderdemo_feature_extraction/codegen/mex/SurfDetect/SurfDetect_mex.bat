@echo off
set MATLAB=C:\PROGRA~1\MATLAB\R2018a
set MATLAB_ARCH=win64
set MATLAB_BIN="C:\Program Files\MATLAB\R2018a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=SurfDetect_mex
set MEX_NAME=SurfDetect_mex
set MEX_EXT=.mexw64
call setEnv.bat
echo # Make settings for SurfDetect > SurfDetect_mex.mki
echo COMPILER=%COMPILER%>> SurfDetect_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> SurfDetect_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> SurfDetect_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> SurfDetect_mex.mki
echo LINKER=%LINKER%>> SurfDetect_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> SurfDetect_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> SurfDetect_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> SurfDetect_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> SurfDetect_mex.mki
echo BORLAND=%BORLAND%>> SurfDetect_mex.mki
echo NVCC=nvcc >> SurfDetect_mex.mki
echo CUDA_FLAGS= -c -rdc=true -Xcompiler "/wd 4819" -Xcompiler "/MD" -Xcudafe "--diag_suppress=unsigned_compare_with_zero --diag_suppress=useless_type_qualifier_on_return_type" -D_GNU_SOURCE -DMATLAB_MEX_FILE -Wno-deprecated-declarations  >> SurfDetect_mex.mki
echo LD=nvcc >> SurfDetect_mex.mki
echo MAPLIBS=libemlrt.lib,libcovrt.lib,libut.lib,libmwmathutil.lib,/export:mexFunction,/export:emlrtMexFcnProperties,/export:SurfDetect,/export:SurfDetect_initialize,/export:SurfDetect_terminate,/export:SurfDetect_atexit >> SurfDetect_mex.mki
echo OMPFLAGS= >> SurfDetect_mex.mki
echo OMPLINKFLAGS= >> SurfDetect_mex.mki
echo EMC_COMPILER=msvc150>> SurfDetect_mex.mki
echo EMC_CONFIG=optim>> SurfDetect_mex.mki
"C:\Program Files\MATLAB\R2018a\bin\win64\gmake" -B -f SurfDetect_mex.mk
