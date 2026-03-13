# End of LM Studio CLI section
lmstudio="$HOME/.lmstudio/bin"
if [ -d $lmstudio ]; then
    export GOPATH="$lmstudio"
    export PATH="$PATH:$lmstudio/bin"
    printf " lmstudio"
fi

unset lmstudio
