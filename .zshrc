# base
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.bin:$HOME/.local/bin"
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"
export CDPATH="$HOME/Dev"

# SDL
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

for cfg in $(ls $HOME/.zshrc.d/*); do
    [ -r $cfg ] && source $cfg
done

# http://bewatermyfriend.org/p/2012/003/
autoload -Uz compinit && compinit
