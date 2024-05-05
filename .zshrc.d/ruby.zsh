# Ruby

# rvm
rvm_bin_s=".rvm/bin"
rvm_bin="$HOME/$rvm_bin_s"
if [ -d $rvm_bin ]; then
    if [[ "$PATH" == *"$rvm_bin"* ]]; then
    else
        printf " rvm"
        export PATH="$PATH:$rvm_bin"
    fi
fi

# rbenv
rbenv_bin_s=".rbenv/bin"
rbenv_bin="$HOME/$rbenv_bin_s"
if [ -d "$rbenv_bin" ]; then
    if [[ "$PATH" == *"$rbenv_bin"* ]]; then
    else
        printf " rbenv"
        export PATH="$PATH:$rbenv_bin"
    fi
fi
if which rbenv > /dev/null; then
    printf " \e[31meval rbenv\e[0m"
    eval "$(rbenv init - /bin/zsh)"
fi
