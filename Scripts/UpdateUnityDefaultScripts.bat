@echo off

set "modScriptPath=%~dp0ModifiedScripts"
set "unityReg=HKCU\SOFTWARE\Unity Technologies\Installer"
set "unityLocationVariable=Location x64"

for /F "delims=" %%a in ('reg query "%unityReg%"') do (
	for /F "tokens=4,5*" %%b in ('reg query "%%a" /v "%unityLocationVariable%"') do (
		xcopy /s /y /q "%modScriptPath%" "%%b %%c\Editor\Data\Resources\ScriptTemplates"
		
	)
)
pause