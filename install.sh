#!/usr/bin/env bash
#
# install.sh 
#

BACKUP_DIR="dot_backup"
BASE="base"

function packages() {
    SCRIPT_DIR="$1"

    declare -a PACK_ARR

    for FILENAME in "$SCRIPT_DIR"/*; do
        [ -e "$FILENAME" ] || [ -d "$FILENAME" ] || continue

        FBASE="$(basename "$FILENAME")"

        [ "$FBASE" != "$(basename "$0")" ] || continue
        PACK_ARR+=("$FBASE")
    done

    for PACK in "${PACK_ARR[@]}"; do
        echo "$PACK"
    done
}

function print_packages() {
    echo "packages: "
    PKGS="$(packages "$(dirname "$(realpath "$0")")")"
    while read -r LINE; do
        echo "-- $LINE"
    done <<< "$PKGS"
}

function main() {
    SCRIPT_DIR="$1"
    PACKAGE="$2"

    if ! [ -d "$SCRIPT_DIR/$PACKAGE" ]; then
        echo "invalid package"
        print_packages
        exit 1
    fi

    cd "$HOME"

    # create empty backup directory
    if [ -d "$BACKUP_DIR" ]; then
        rm -rf "$BACKUP_DIR"
    fi

    mkdir "$BACKUP_DIR"

    if [ "$PACKAGE" == "$BASE" ]; then
        # create diff of base config layout
        diff -aur --unidirectional-new-file "$HOME" "$SCRIPT_DIR/$BASE" > "$SCRIPT_DIR/$BASE.patch"

        # patch base config
        patch -b -B "$BACKUP_DIR/" -r - -i "$SCRIPT_DIR/$BASE.patch"
        rm "$SCRIPT_DIR/$BASE.patch"
    else
        patch -p1 -b -B "$BACKUP_DIR/" -i "$SCRIPT_DIR/$PACKAGE/$BASE.patch"
        for FILENAME in "$SCRIPT_DIR/$PACKAGE"/*; do
            FBASE="$(basename "$FILENAME")"
            [ "$FBASE" != "$BASE.patch" ] || continue

            echo "package has option $FBASE, install? [y/N]"
            while read LINE; do
                [ "$LINE" == "y" ] || [ "$LINE" == "Y" ] || break
                patch -p1 -b -B "$BACKUP_DIR/" -r - -i "$SCRIPT_DIR/$PACKAGE/$FBASE"
                break
            done
        done
    fi
}

# check args
if [ "$#" -ne 1 ]; then
    echo "usage: $0 [package]"
    print_packages 
    exit 1
fi

# pass script absolute directory and package to main
main "$(dirname "$(realpath "$0")")" "$1"
