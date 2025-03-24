@echo on
setlocal EnableDelayedExpansion


@REM Testing executable files exist
if not exist %PREFIX%\\Library\\bin\\fax2ps.exe exit 1
if not exist %PREFIX%\\Library\\bin\\fax2tiff.exe exit 1
if not exist %PREFIX%\\Library\\bin\\pal2rgb.exe exit 1
if not exist %PREFIX%\\Library\\bin\\ppm2tiff.exe exit 1
if not exist %PREFIX%\\Library\\bin\\raw2tiff.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiff2bw.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiff2pdf.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiff2ps.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiff2rgba.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiffcmp.exe exit 1
if not exist %PREFIX%\\Library\\bin\\iffcp.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiffcrop.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiffdither.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiffdump.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiffinfo.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiffmedian.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiffset.exe exit 1
if not exist %PREFIX%\\Library\\bin\\tiffsplit.exe exit 1

@REM Testing headers files exist
if not exist %PREFIX%\\Library\\include\\tiff.h exit 1
if not exist %PREFIX%\\Library\\include\\tiffconf.h exit 1
if not exist %PREFIX%\\Library\\include\\tiffio.h exit 1
if not exist %PREFIX%\\Library\\include\\tiffio.hxx exit 1
if not exist %PREFIX%\\Library\\include\\tiffvers.h exit 1

@REM Testing dynamic libraries exist
if not exist %PREFIX%\\Library\\bin\\tiff.dll exit 1
if not exist %PREFIX%\\Library\\bin\\libtiff.dll exit 1
@REM The C++ tiffxx.dll has been removed as of 4.5.0:
@REM https://gitlab.com/libtiff/libtiff/-/merge_requests/338

@REM Testing import libraries exist
if not exist %PREFIX%\\Library\\lib\\libtiff.lib exit 1
if not exist %PREFIX%\\Library\\lib\\tiff.lib exit 1
if not exist %PREFIX%\\Library\\lib\\tiffxx.lib exit 1

@REM Testing a pkgconfig file exists
if not exist %PREFIX%\\Library\\lib\\pkgconfig\\libtiff-4.pc exit 1

@REM Testing a python script with opencv and tifffile
::python downstream_tests.py
