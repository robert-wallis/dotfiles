android_home_p="Library/Android/sdk"
ANDROID_HOME="$HOME/$android_home_p"
if [ -d $ANDROID_HOME ]; then
    export ANDROID_HOME
    printf " android"
    export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
fi

android_ndk_p="ndk/21.0.6113669"
ANDROID_NDK_HOME="$ANDROID_HOME/$android_ndk_p"
if [ -d $ANDROID_NDK_HOME ]; then
    export ANDROID_NDK_HOME
    printf " NDK"
    export PATH="$PATH:$ANDROID_NDK_HOME"
fi
