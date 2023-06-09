@echo on

cd apis\python

%PYTHON% setup.py install --single-version-externally-managed --record record.txt --libtiledbvcf="%LIBRARY_PREFIX%"
if %ERRORLEVEL% neq 0 exit 1
