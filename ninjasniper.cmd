@echo off
rem Check if java.exe is found
call :cmd_where java.exe
rem If it exists, run the bot
if not "%_path%" == "" (
	java -jar "%~dp0PokeBotNinja.jar" %*
) else (
rem Otherwise open download page
	echo Java NOT installed, opening download site
	START https://java.com/en/download/
	pause
)
goto :eof
:cmd_where
	setlocal
	endlocal & set _path=%~$PATH:1
	goto :eof