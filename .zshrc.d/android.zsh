ANDROID_HOME="$HOME/Library/Android/sdk"
if [ -d $ANDROID_HOME ]; then
    export ANDROID_HOME
    printf "ANDROID_HOME        $ANDROID_HOME\n"
    export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
fi

ANDROID_NDK_HOME="$ANDROID_HOME/ndk/21.0.6113669"
if [ -d $ANDROID_NDK_HOME ]; then
    export ANDROID_NDK_HOME
    printf "ANDROID_NDK_HOME    $ANDROID_NDK_HOME\n"
    export PATH="$PATH:$ANDROID_NDK_HOME"
fi
