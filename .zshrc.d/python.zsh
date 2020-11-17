# Python
PYTHON_BIN="$HOME/Library/Python/3.8/bin"
if [ -d $PYTHON_BIN ]; then
    export PATH="$PATH:$PYTHON_BIN"
    printf "python              $PYTHON_BIN\n"
fi