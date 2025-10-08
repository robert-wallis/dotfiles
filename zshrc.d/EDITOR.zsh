if [[ ! -z "$(which nvim)" ]]; then
  export EDITOR="nvim"
elif [[ ! -s "$(which vim)" ]]; then
  export EDITOR="vim"
fi
