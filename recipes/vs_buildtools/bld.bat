python -m installer --accept-license --components msvc --output-dir=%LIBRARY_PREFIX%\\vs_buildtools
if errorlevel 1 exit 1
