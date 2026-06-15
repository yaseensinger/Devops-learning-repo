#!/bin/bash

# 1. Create the Arena_Boss directory
mkdir -p Arena_Boss

# 2. Create the Victory_Archive directory
mkdir -p Victory_Archive

# 3. Create 5 text files with 10–20 random lines
for i in {1..5}; do
    file="Arena_Boss/file${i}.txt"

    # Generate a random number between 10 and 20
    lines=$((RANDOM % 11 + 10))

    # Create the file with random content
    > "$file"
    for ((j=1; j<=lines; j++)); do
        if (( RANDOM % 5 == 0 )); then
            echo "Victory line $j" >> "$file"
        else
            echo "Random text line $j" >> "$file"
        fi
    done
done

# 4. Sort the files by size and display the list
echo "Files sorted by size:"
ls -lS Arena_Boss/*.txt

# 5. Move files containing 'Victory' to Victory_Archive
for file in Arena_Boss/*.txt; do
    if grep -q "Victory" "$file"; then
        mv "$file" Victory_Archive/
        echo "$(basename "$file") moved to Victory_Archive"
    fi
done