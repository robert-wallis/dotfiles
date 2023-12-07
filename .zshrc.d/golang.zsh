# Go Language
GOPATH="$HOME/Dev/go"
if [ -d $GOPATH ]; then
    export GOPATH="$GOPATH"
	export PATH="$PATH:$GOPATH/bin"
    printf "go GOPATH           $GOPATH\n"
fi
