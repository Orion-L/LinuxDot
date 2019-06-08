#!/usr/bin/env bash
#
# install.sh 
#

BACKUP_DIR="dot_backup"
BASE_DIR="base"

function main() {
    SCRIPT_DIR="$1"

    # create empty backup directory
    if [ -d "$HOME/$BACKUP_DIR" ]; then
        rm -rf "$HOME/$BACKUP_DIR"
    fi

    mkdir "$HOME/$BACKUP_DIR"

    # create diff of base config layout
    cd "$SCRIPT_DIR"
    diff -aur --unidirectional-new-file "$HOME" "$BASE_DIR" > "$BASE_DIR.patch"

    # patch base config
    cd "$HOME"
    patch -b -B "$BACKUP_DIR/" -i "$SCRIPT_DIR/$BASE_DIR.patch"
    rm "$SCRIPT_DIR/$BASE_DIR.patch"
    
}

# check args
if [ "$#" -ne 1 ]; then
    echo "usage: $0 [package]"
    exit 1
fi

# pass script absolute directory and package to main
main "$(dirname "$(realpath "$0")")" "$1"
