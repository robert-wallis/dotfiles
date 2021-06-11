# SDL
USR_LOCAL_LIB="/usr/local/lib"
if [ -d $USR_LOCAL_LIB ]; then
    export USR_LOCAL_LIB
	if [ -z "$LIBRARY_PATH" ]
	then
		export LIBRARY_PATH=$USR_LOCAL_LIB
		printf "LIBRARY_PATH        $LIBRARY_PATH\n"
	else
		export LIBRARY_PATH="$LIBRARY_PATH:$USR_LOCAL_LIB"
		printf "LIBRARY_PATH        $LIBRARY_PATH\n"
	fi
fi

