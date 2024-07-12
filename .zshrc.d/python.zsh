# Python installed from python.org installer
python_framework_bin="/Library/Frameworks/Python.framework/Versions/3.12/bin"
if [ -d $python_framework_bin ]; then
    export PATH="$PATH:$python_framework_bin"
    printf " python3.12"
fi
unset python_framework_bin
