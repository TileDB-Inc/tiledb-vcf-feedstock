@echo on

mkdir libtiledbvcf-build
cd libtiledbvcf-build

rem configure
cmake ^
  -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
  -DOVERRIDE_INSTALL_PREFIX=OFF ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DFORCE_EXTERNAL_HTSLIB=OFF ^
  ../libtiledbvcf
if %ERRORLEVEL% neq 0 exit 1

rem build
cmake --build . --config Release --parallel %CPU_COUNT%
if %ERRORLEVEL% neq 0 exit 1

rem install
cmake --build . --target install-libtiledbvcf --config Release
if %ERRORLEVEL% neq 0 exit 1

rem cleanup
cd ..
rmdir /s /q libtiledbvcf-build
if %ERRORLEVEL% neq 0 exit 1
