# Ruby
# rbenv
if which rbenv > /dev/null; then
    printf "rbenv"
	eval "$(rbenv init - /bin/zsh)"
	printf "               $(which ruby)\n"
fi

rvm_bin="$HOME/.rvm/bin"
if [ -d $rvm_bin ]; then
	printf "rvm                 $rvm_bin\n"
	if [[ "$PATH" == *"$rvm_bin"* ]]; then
		export PATH="$PATH:$HOME/.rvm/bin"
	else
	fi
fi
