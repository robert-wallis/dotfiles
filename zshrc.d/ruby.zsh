# Ruby

# rvm
rvm_bin="$HOME/.rvm/bin"
if [ -d $rvm_bin ]; then
    if [[ "$PATH" == *"$rvm_bin"* ]]; then
    else
        printf " rvm"
        export PATH="$PATH:$rvm_bin"
    fi
fi
unset rvm_bin

# rbenv
rbenv_bin="$HOME/.rbenv/bin"
if [ -d "$rbenv_bin" ]; then
    if [[ "$PATH" == *"$rbenv_bin"* ]]; then
    else
        printf " rbenv"
        export PATH="$PATH:$rbenv_bin"
    fi
    if [ ! -z "$(which rbenv 2>/dev/null)" ]; then
        printf " \e[31meval rbenv\e[0m"
        eval "$(rbenv init - /bin/zsh)"
    fi
fi
unset rbenv_bin
