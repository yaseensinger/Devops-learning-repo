#!/bin/bash

# Exit codes
# 0 - Success
# 1 - Source folder not found
# 2 - Failed to create destination folders
# 3 - No media files found
# 4 - One or more files failed to move
 
SOURCE="/mnt/d/pics/iphone 12 backup"
DEST="/mnt/d/pics/iphone backup"
DUPES_DIR="$DEST/_duplicates"
DUPES_LOG="$DEST/duplicates_list.txt"

IMAGE_EXTS="jpg jpeg png gif bmp tiff "
VIDEO_EXTS="mp4 mov"

# Verify sorce location 
if [ ! -d "$SOURCE" ]; then
    echo "ERROR: Source folder not found: $SOURCE"
    exit 1
fi

if ! mkdir -p "$DEST" "$DUPES_DIR"; then
    echo "ERROR: Could not create destination folders"
    exit 2
fi

echo "Starting move..."
echo ""

moved=0
skipped=0
errors=0

# Go though every file  
while IFS= read -r -d '' file; do

    filename=$(basename "$file")
    ext="${filename##*.}"
    ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

    # Check if it's a pic or vid
    if ! echo "$IMAGE_EXTS $VIDEO_EXTS" | grep -qw "$ext"; then
        continue
    fi

    dest_path="$DEST/$filename"

    # If filename already exists skip and log it
    if [ -e "$dest_path" ]; then
        echo "SKIP: $filename"
        echo "$file" >> "$DUPES_LOG"
        ((skipped++))
    else
        if mv "$file" "$dest_path"; then
            echo "MOVED: $filename"
            ((moved++))
        else
            echo "ERROR: Failed to move $filename"
            ((errors++))
        fi
    fi

done < <(find "$SOURCE" -type f -print0)

# check the source again 
if [ $((moved + skipped + errors)) -eq 0 ]; then
    echo "No media files found in source folder."
    exit 3
fi

# move all the left files in the dup folder 
if [ -s "$DUPES_LOG" ]; then
    echo ""
    echo "Moving duplicates to _duplicates folder..."
    while IFS= read -r filepath; do
        if ! mv "$filepath" "$DUPES_DIR/"; then
            echo "ERROR: Failed to move duplicate: $(basename "$filepath")"
            ((errors++))
        fi
    done < "$DUPES_LOG"
fi

echo ""
echo "────────────────────"
echo "Done"
echo "  Moved   : $moved"
echo "  Skipped : $skipped"
echo "  Errors  : $errors"

if [ $skipped -gt 0 ]; then
    echo ""
    echo "Skipped files moved to: $DUPES_DIR"
    echo "File list saved at    : $DUPES_LOG"
fi

# ── Exit code ────────────────────────────────
if [ $errors -gt 0 ]; then
    exit 4
fi

exit 0