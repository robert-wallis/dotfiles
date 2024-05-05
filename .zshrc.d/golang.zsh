# Go Language
gopath_s="Dev/go"
GOPATH="$HOME/$gopath_s"
if [ -d $GOPATH ]; then
    export GOPATH="$GOPATH"
    export PATH="$PATH:$GOPATH/bin"
    printf " go"
fi
