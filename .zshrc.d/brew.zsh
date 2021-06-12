# Homebrew
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
    printf "brew --prefix       $(brew --prefix)\n"
fi
