@echo on

set "LIBTILEDBVCF_PATH=%LIBRARY_LIB%"
%PYTHON% -m pip install --no-deps --no-build-isolation -v apis\python
if %ERRORLEVEL% neq 0 exit 1
