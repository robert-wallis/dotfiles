printf "env folders:\n"

obsidian="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/Robert"
if [ -d "$obsidian" -a -z "$OBSIDIAN" ]; then
    export OBSIDIAN="$obsidian"
    printf "  \$OBSIDIAN         $OBSIDIAN\n"
fi

gdrive="$HOME/Library/CloudStorage/GoogleDrive-smilingrob@gmail.com/My Drive"
if [ -d "$gdrive" -a -z "$GDRIVE" ]; then
   export GDRIVE="$gdrive"
   printf "  \$GDRIVE           $GDRIVE\n"
fi
