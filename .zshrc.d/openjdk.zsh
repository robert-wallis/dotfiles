# openjdk
openjdk_path="/opt/homebrew/opt/openjdk/bin"
if [ -d $openjdk_path ]; then
    export PATH="$openjdk_path:$PATH"
    printf " openjdk"
fi

unset openjdk_path
