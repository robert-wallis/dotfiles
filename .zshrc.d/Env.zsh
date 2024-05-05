
obsidian_s="Library/Mobile Documents/iCloud~md~obsidian/Documents/Robert"
obsidian="$HOME/$obsidian_s"
if [ -d "$obsidian" -a -z "$OBSIDIAN" ]; then
    export OBSIDIAN="$obsidian"
    printf " \$OBSIDIAN"
fi

gdrive_s="Library/CloudStorage/GoogleDrive-smilingrob@gmail.com/My Drive"
gdrive="$HOME/$gdrive_s"
if [ -d "$gdrive" -a -z "$GDRIVE" ]; then
    export GDRIVE="$gdrive"
    printf " \$GDRIVE"
fi
