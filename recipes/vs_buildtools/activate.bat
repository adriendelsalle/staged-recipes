@@echo off

set ROOT=%CONDA_PREFIX%
set MSVC_VERSION=@{MSVC_VERSION}
set MSVC_HOST=Host@{HOST_ARCH}
set MSVC_ARCH=@{TARGET_ARCH}
set SDK_VERSION=@{SDK_VERSION}
set SDK_ARCH=@{SDK_TARGET_ARCH}

set MSVC_ROOT=%ROOT%\\VC\\Tools\\MSVC\\%MSVC_VERSION%
set SDK_INCLUDE=%ROOT%\\Windows Kits\\10\\Include\\%SDK_VERSION%
set SDK_LIBS=%ROOT%\\Windows Kits\\10\\Lib\\%SDK_VERSION%

set VCToolsInstallDir=%MSVC_ROOT%\\
set PATH=%MSVC_ROOT%\\bin\\%MSVC_HOST%\\%MSVC_ARCH%;%ROOT%Windows Kits\\10\\bin\\%SDK_VERSION%\\%SDK_ARCH%;%ROOT%Windows Kits\\10\\bin\\%SDK_VERSION%\\%SDK_ARCH%\\ucrt;%PATH%
set INCLUDE=%MSVC_ROOT%\\include;%SDK_INCLUDE%\\ucrt;%SDK_INCLUDE%\\shared;%SDK_INCLUDE%\\um;%SDK_INCLUDE%\\winrt;%SDK_INCLUDE%\\cppwinrt
set LIB=%MSVC_ROOT%\\lib\\%MSVC_ARCH%;%SDK_LIBS%\\ucrt\\%SDK_ARCH%;%SDK_LIBS%\\um\\%SDK_ARCH%
