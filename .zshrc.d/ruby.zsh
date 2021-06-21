# Ruby
# rbenv
if which rbenv > /dev/null; then
    printf "rbenv"
	eval "$(rbenv init - /bin/zsh)"
	printf "               $(which ruby)\n"
fi
