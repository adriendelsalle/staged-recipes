if /I "%PKG_NAME%" == "vs2022-msvc-x64" (
	set MSVC_COMPONENT=msvc
)

echo %MSVC_COMPONENT%