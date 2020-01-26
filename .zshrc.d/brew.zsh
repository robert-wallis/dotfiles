# Homebrew
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
    printf "HOMEBREW            $(brew --prefix)\n"
fi
