# Go Language
gopath="$HOME/go"
if [ -d $gopath ]; then
    export GOPATH="$gopath"
    export PATH="$PATH:$gopath/bin"
    printf " go"
fi

unset gopath
