echo on

if not exist %PREFIX%\\Library\\bin\\tiff.dll exit 1
if not exist %PREFIX%\\Library\\lib\\tiffxx.lib exit 1
if not exist %PREFIX%\\Library\\bin\\libtiff.dll exit 1
@REM The C++ tiffxx.dll has been removed as of 4.5.0:
@REM https://gitlab.com/libtiff/libtiff/-/merge_requests/338

python downstream_tests.py