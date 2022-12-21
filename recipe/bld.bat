setlocal EnableDelayedExpansion

mkdir libtiledbvcf-build
cd libtiledbvcf-build

cmake ^
  -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
  -DOVERRIDE_INSTALL_PREFIX=OFF ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DFORCE_EXTERNAL_HTSLIB=ON ^
  ..\libtiledbvcf
if errorlevel 1 exit 1

make -j %CPU_COUNT%
if errorlevel 1 exit 1
