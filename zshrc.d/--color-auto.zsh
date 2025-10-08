# https://wiki.archlinux.org/title/Color_output_in_console

alias grep='grep --color=auto'

if [ "$(uname)" = "Linux" ]; then
	alias diff='diff --color=auto'
	alias ip='ip --color=auto'
	export LESS='-R --use-color -Dd+r$Du+b'
	alias dmesg='dmesg --color=always'
	alias ls='ls --color=auto'
	export MANPAGER='less -R --use-color -Dd+r -Du+b'
fi
