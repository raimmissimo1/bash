#!/bin/bash

TARGET_DIR="$HOME/Downloads"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Directory is not found: $TARGET_DIR"
    exit 1
fi

cd "$TARGET_DIR" || exit 1

mkdir -p Images Videos Documents Music Archives Programs Others

for file in *; 
do
    [ -f "$file" ] || continue

    ext="${file##*.}"
    ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

    case "$ext" in
        jpg|jpeg|png|gif|webp|bmp|svg)
            mv -n "$file" Images/
            ;;
        mp4|mkv|avi|mov|wmv|flv|webm)
            mv -n "$file" Videos/
            ;;
        pdf|doc|docx|txt|odt|ppt|pptx|xls|xlsx)
            mv -n "$file" Documents/
            ;;
        mp3|wav|flac|ogg|m4a)
            mv -n "$file" Music/
            ;;
        zip|rar|7z|tar|gz|bz2)
            mv -n "$file" Archives/
            ;;
        exe|msi|deb|rpm|AppImage|appimage)
            mv -n "$file" Programs/
            ;;
        *)
            mv -n "$file" Others/
            ;;
    esac
done

echo "Sorting id done"

