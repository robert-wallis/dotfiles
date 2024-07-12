cmake_path="/Applications/CMake.app/Contents/bin"
if [ -d $cmake_path ]; then
    export PATH="$PATH:$cmake_path"
    printf " cmake"
fi

unset cmake_path
