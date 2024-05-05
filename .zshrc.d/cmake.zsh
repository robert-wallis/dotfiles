CMAKE_PATH="/Applications/CMake.app/Contents/bin"
if [ -d $CMAKE_PATH ]; then
    export PATH="$PATH:$CMAKE_PATH"
    printf " cmake"
fi
