
export PATH="$PATH:$HOME/bin:$HOME/.local/bin"
export CLICOLOR=1
export GPG_TTY=$(tty)

if [ ! -d "$HOME/.zshrc.d" ]; then
  echo "~/.zshrc: ~/.zshrc.d is not a directory"
else
  for cfg in $(ls $HOME/.zshrc.d/*); do
      [ -r $cfg ] && source $cfg
  done
fi

# after .zshrc.d so that we can have good pathing for zsh
if [[ "$SHELL" != *zsh ]]; then
  zsh_path=$(whence -p zsh)
  if [[ ! -z "$zsh_path" ]]; then
    export SHELL=$zsh_path
  fi
fi

# http://bewatermyfriend.org/p/2012/003/
autoload -Uz compinit && compinit

newline=$'\n'
PROMPT="%(?..⏎ %F{red}%?%f${newline})%F{reset}%n@%m %2~%f \$vcs_info_msg_0_\$vcs_info_msg_1_ %# "

alias ll="ls -la"

