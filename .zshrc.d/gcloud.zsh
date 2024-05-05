
gcloud_p="google-cloud-sdk/path.zsh.inc"
if [ -f "$HOME/$gcloud_p" ]; then 
    printf " \e[33m. gcloud\e[0m"
    . "$HOME/$gcloud_p"; 
fi

gcloud_comp_p="google-cloud-sdk/completion.zsh.inc"
if [ -f "$HOME/$gcloud_comp_p" ]; then 
    . "$HOME/$gcloud_comp_p"; 
fi
