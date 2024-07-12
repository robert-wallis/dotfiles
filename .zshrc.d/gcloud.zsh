gdir="google-cloud-sdk"
gdir_full="not-found"
gcloud_p="path.zsh.inc"
gcloud_comp_p="completion.zsh.inc"

# find the path to where the google-cloud-sdk was unzipped
# https://cloud.google.com/sdk/docs/install-sdk
if [ -d "$HOME/$gdir" ]; then
    gdir_full="$HOME/$gdir"
fi
if [ -d "$HOME/OpenSource/$gdir" ]; then
    gdir_full="$HOME/OpenSource/$gdir"
fi

# check if the right file exists and source it

if [ -f "$gdir_full/$gcloud_p" ]; then
    printf " \e[33mgcloud\e[0m"
    . "$gdir_full/$gcloud_p";
fi

if [ -f "$gdir_full/$gcloud_comp_p" ]; then
    printf "\e[33mℹ\e[0m"
    . "$gdir_full/$gcloud_comp_p";
fi
