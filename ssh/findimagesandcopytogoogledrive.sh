#!/bin/bash

SOURCE_DIR="/path/to/source/directory"
DEST_DIR="/Volumes/G"  

if [ ! -d "$DEST_DIR" ]; then
  echo "Destination directory $DEST_DIR does not exist. Exiting."
  exit 1
fi

find "$SOURCE_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.bmp" \) -size +1M -exec cp {} "$DEST_DIR" \;

echo "Image files over 1 MB have been copied to $DEST_DIR."