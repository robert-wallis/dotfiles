# Homebrew brew.sh, but this is custom for me

brew_command="/opt/homebrew/bin/brew"
if [ -f $brew_command ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
    printf " brew"
fi
