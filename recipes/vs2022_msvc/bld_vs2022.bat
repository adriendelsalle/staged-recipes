
if /I "%PKG_NAME%" == "vs2022-msvc-x64" (
	set MSVC_COMPONENT=msvc
)
if /I "%PKG_NAME%" == "vs2022-crt-x64" (
    set MSVC_COMPONENT=crt
)
if /I "%PKG_NAME%" == "vs2022-asan-x64" (
    set MSVC_COMPONENT=asan
)

if /I "%MSVC_COMPONENT%" NEQ "" (
    python -m installer ^
        --accept-license ^
        --components %MSVC_COMPONENT% ^
        --msvc-version=%PKG_VERSION% ^
        --install-prefix=%LIBRARY_PREFIX%
)

if errorlevel 1 exit 1
