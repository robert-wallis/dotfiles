dev_path="$HOME/Dev"
if [ -d "$dev_path" ]; then
        # CDPATH allows you to `cd project` if `project` exists inside of `~/Dev/` from anywhere
	export CDPATH=".:$dev_path"
	printf " \$CDPATH"
fi
