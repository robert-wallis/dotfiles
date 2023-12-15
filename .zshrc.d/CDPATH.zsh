dev_path="$HOME/Dev"
if [ -d "$dev_path" ]; then
	export CDPATH=".:$dev_path"
	printf "CDPATH              $CDPATH\n"
fi
