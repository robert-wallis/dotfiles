# SDL
USR_LOCAL_LIB="/usr/local/lib"
if [ -d $USR_LOCAL_LIB ]; then
	if [[ "$LIBRARY_PATH" == *"$USR_LOCAL_LIB"* ]]; then
		printf " \$LIBRARY_PATH\n"
	else
		if [ -z "$LIBRARY_PATH" ]
		then
			export LIBRARY_PATH=$USR_LOCAL_LIB
			printf " \$LIBRARY_PATH"
		else
			export LIBRARY_PATH="$LIBRARY_PATH:$USR_LOCAL_LIB"
			printf " \$LIBRARY_PATH"
		fi
	fi
fi

