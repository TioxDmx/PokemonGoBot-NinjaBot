#!/bin/sh
if java -version 2>&1 >/dev/null | grep -q "java version" ; then
	java -jar PokeBotNinja.jar "$@"
	read -rsp $'Press any key to continue...\n' -n 1 key
else
	echo "Java NOT installed!"
	echo "Go to https://java.com/en/download/ or install it from your package manager!"
	echo "Re-run startbot after installing Java"
	read -rsp $'Press any key to continue...\n' -n 1 key
fi