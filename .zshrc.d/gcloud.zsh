gdir_full="not-found"

# find the path to where the google-cloud-sdk was unzipped
# https://cloud.google.com/sdk/docs/install-sdk
if [ -d "$HOME/google-cloud-sdk" ]; then
    gdir_full="$HOME/google-cloud-sdk"
fi
if [ -d "$HOME/OpenSource/google-cloud-sdk" ]; then
    gdir_full="$HOME/OpenSource/google-cloud-sdk"
fi

# check if the right file exists and source it

if [ -f "$gdir_full/path.zsh.inc" ]; then
    printf " \e[33mgcloud\e[0m"
    . "$gdir_full/path.zsh.inc";
fi

if [ -f "$gdir_full/completion.zsh.inc" ]; then
    printf "\e[33mℹ\e[0m"
    . "$gdir_full/completion.zsh.inc";
fi

unset gdir_full
