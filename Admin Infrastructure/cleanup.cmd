@echo off
REM Moves all files on desktop to target directory (from C:\Users\shopuser\Desktop)
set t="Left on Desktop"
REM loops through all files, pulls their path name to %%G, then checks if they're this script. If they aren't, moves them to the target
for /f "delims=" %%G in ('DIR /b /s "C:\Users\shopuser\Desktop"') do (
	if %%G NEQ C:\Users\shopuser\Desktop\cleanup.cmd (
		echo moving %%G
		move "%%G" %t%
	)
)