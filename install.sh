#!/usr/bin/env bash
#
# install.sh 
#

BACKUP_DIR="dot_backup"
BASE="base"

# get list of available packages
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

# print packages to stdout
function print_packages() {
    echo "packages: "
    PKGS="$(packages "$(dirname "$(realpath "$0")")")"
    while read -r LINE; do
        echo "-- $LINE"
    done <<< "$PKGS"
}

# copy package base directory, backup if necessary
function setup_base() {
    DIR="$1"
    cd "$DIR"
    shopt -s dotglob globstar
    for FILENAME in **; do
        [ -f "$FILENAME" ] || continue
        FDIR="$(dirname "$FILENAME")"
        if [ -e "$HOME/$FILENAME" ]; then
            mkdir -p "$HOME/$BACKUP_DIR/$FDIR"; cp "$HOME/$FILENAME" $_
        fi

        mkdir -p "$HOME/$FDIR"; cp "$FILENAME" $_
    done
    shopt -u dotglob globstar
    cd "$HOME"
}

function main() {
    SCRIPT_DIR="$1"
    PACKAGE="$2"

    # check if package valid
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
        setup_base "$SCRIPT_DIR/$BASE"
    else
        setup_base "$SCRIPT_DIR/$PACKAGE/$BASE"

        # loop through package patches
        for FILENAME in "$SCRIPT_DIR/$PACKAGE"/*; do
            [ -f "$FILENAME" ] || continue
            FBASE="$(basename "$FILENAME")"

            echo "package has option $FBASE, install? [y/N]"
            while read LINE; do
                [ "$LINE" == "y" ] || [ "$LINE" == "Y" ] || break
                # apply patch
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
