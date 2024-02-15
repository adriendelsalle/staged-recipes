python -m installer ^
    --accept-license ^
    --components sdk ^
    --sdk-version=%SDK_VERSION% ^
    --sdk-win-version=%SDK_WIN_VERSION% ^
    --install-prefix %LIBRARY_PREFIX%

if errorlevel 1 exit 1
