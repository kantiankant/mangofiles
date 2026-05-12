#!/bin/bash

# 1. Define the directory
SAVE_DIR="$HOME/Screenshots"

# 2. Create the directory if it doesn't exist
mkdir -p "$SAVE_DIR"

# 3. Generate a timestamped filename
FILENAME="screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"
FILEPATH="$SAVE_DIR/$FILENAME"

# 4. Take the screenshot
# We use the -g flag with slurp to select the area
# If you cancel (hit ESC), the script will exit gracefully
GEOM=$(slurp)
if [ -n "$GEOM" ]; then
    grim -g "$GEOM" "$FILEPATH"
    
    # Optional: Send a desktop notification
    notify-send "Screenshot Saved" "Saved to $FILENAME" -i camera-photo
else
    echo "Screenshot cancelled"
fi

