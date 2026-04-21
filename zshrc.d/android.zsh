android_home_p="Library/Android/sdk"
ANDROID_HOME="$HOME/$android_home_p"
if [ -d $ANDROID_HOME ]; then
    export ANDROID_HOME
    printf " android"
    export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
fi
unset android_home_p

android_ndk_p="ndk/21.0.6113669"
ANDROID_NDK_HOME="$ANDROID_HOME/$android_ndk_p"
if [ -d $ANDROID_NDK_HOME ]; then
    export ANDROID_NDK_HOME
    printf " NDK"
    export PATH="$PATH:$ANDROID_NDK_HOME"
fi
unset android_ndk_p

# studio .
android_studio_cli="/Applications/Android Studio.app/Contents/MacOS/"
if [ -f "$android_studio_cli/studio" ]; then
    printf " studio"
    export PATH="$PATH:$android_studio_cli"
fi
unset android_studio_cli
