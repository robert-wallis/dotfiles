# base
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.bin:$HOME/.local/bin"
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"

# SDL
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

for cfg in $(ls $HOME/.zshrc.d/*); do
    echo $cfg
    [ -r $cfg ] && source $cfg
done
