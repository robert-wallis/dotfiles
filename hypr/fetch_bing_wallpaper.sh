#!/bin/bash

# Ensure jq is installed
if ! command -v jq &> /dev/null; then
    echo "Error: jq is not installed. Please install it to continue." >&2
    exit 1
fi

# The directory to save the wallpapers
WALLPAPER_DIR="/home/robert/Pictures/Bing Wallpapers"

# Create the directory if it doesn't exist
mkdir -p "$WALLPAPER_DIR"

# Fetch the last 8 days of Bing Wallpaper JSON data
JSON_DATA=$(curl -s "https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=8&mkt=en-US")

# Loop through each image in the JSON data using jq
echo "$JSON_DATA" | jq -r '.images[] | @base64' | while read -r B64_IMAGE; do
    # Decode the base64 encoded JSON for the image
    IMAGE_JSON=$(echo "$B64_IMAGE" | base64 -d)

    # Extract data from the JSON
    URL_BASE=$(echo "$IMAGE_JSON" | jq -r '.urlbase')
    START_DATE=$(echo "$IMAGE_JSON" | jq -r '.startdate')
    COPYRIGHT=$(echo "$IMAGE_JSON" | jq -r '.copyright')

    # If we didn't get a URL, skip
    if [ -z "$URL_BASE" ] || [ "$URL_BASE" == "null" ]; then
        continue
    fi

    # Construct the full UHD (3840x2160) image URL
    IMAGE_URL="https://www.bing.com${URL_BASE}_UHD.jpg"

    # Sanitize the copyright info to create a clean filename
    CLEAN_NAME=$(echo "$COPYRIGHT" | sed 's/ (.*)//g' | tr -s -c '[:alnum:]' '-' | sed 's/^-\|-$\|-$//g')

    # Create the final filename
    FILENAME="${START_DATE}_${CLEAN_NAME}.jpg"

    # The full path to save the image
    SAVE_PATH="${WALLPAPER_DIR}/${FILENAME}"

    # Download the image only if it doesn't already exist
    if [ ! -f "$SAVE_PATH" ]; then
        echo "Downloading: $FILENAME"
        curl -s -o "$SAVE_PATH" "$IMAGE_URL"
        echo "Saved to: $SAVE_PATH"
    else
        echo "Already exists: $FILENAME"
    fi
done