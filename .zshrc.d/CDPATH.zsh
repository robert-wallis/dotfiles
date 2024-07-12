source_path="$HOME/Source"
if [ -d "$source_path" ]; then
	# CDPATH allows you to `cd project` if `project` exists inside of `~/Dev/` from anywhere
	export CDPATH=".:$source_path"
	printf " \$CDPATH"
fi

source_path="$HOME/OpenSource"
if [ -d "$source_path" ]; then
	if [ ! -z "$CDPATH" ]; then
		export CDPATH="$CDPATH:$source_path"
	else
		export CDPATH=".:$source_path"
	fi
fi

unset source_path
