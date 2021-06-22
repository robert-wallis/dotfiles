# Ruby

# rvm
rvm_bin="$HOME/.rvm/bin"
if [ -d $rvm_bin ]; then
	printf "rvm                 $rvm_bin\n"
	if [[ "$PATH" == *"$rvm_bin"* ]]; then
	else
		export PATH="$PATH:$rvm_bin"
	fi
fi

# rbenv
rbenv_bin="$HOME/.rbenv/bin"
if [ -d "$rbenv_bin" ]; then
	if [[ "$PATH" == *"$rbenv_bin"* ]]; then
	else
		printf "rbenv               $rbenv_bin\n"
		export PATH="$PATH:$rbenv_bin"
	fi
fi
if which rbenv > /dev/null; then
    printf "rbenv"
	eval "$(rbenv init - /bin/zsh)"
	printf "               $(which ruby)\n"
fi
