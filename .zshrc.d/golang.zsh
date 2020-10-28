# Go Language
GOPATH="$HOME/Dev/go"
if [ -d $GOPATH ]; then
    export GOPATH="$GOPATH"
	export PATH="$PATH:$GOPATH/bin"
    printf "go GO_PATH          $GOPATH\n"
fi
