printf "aliases:\n"

if [ -d "$HOME/dotfiles" ]; then
	printf "\tdotfiles\t cd $HOME/dotfiles\n"
	alias dotfiles="cd \"$HOME/dotfiles\""
fi

if [ -d "$HOME/Downloads" ]; then
	printf "\tdownloads\t cd $HOME/Downloads\n"
	alias downloads="cd \"$HOME/Downloads\""
fi

OBSIDIAN_HOME="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/Robert"
if [ -d "$OBSIDIAN_HOME" ]; then
	printf "\tobsidian\t cd $OBSIDIAN_HOME\n"
	alias obsidian="cd \"$OBSIDIAN_HOME\""
fi

GDRIVE_HOME="$HOME/Library/CloudStorage/GoogleDrive-smilingrob@gmail.com/My\ Drive/"
if [ -d "$GDRIVE_HOME" ]; then
	printf "\tgdrive\t cd \"$GDRIVE_HOME\n"
	alias gdrive="cd \"$GDRIVE_HOME\""
fi
