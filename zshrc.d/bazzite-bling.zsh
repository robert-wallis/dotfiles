bling_path="/usr/share/bazzite-cli/bling.sh"
if [ -f $bling_path ]; then
    printf " bling"
    source $bling_path
    unset bling_path
fi

