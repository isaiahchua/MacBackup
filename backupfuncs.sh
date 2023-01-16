#! /bin/bash

# If rsync >= 3.0.0, replace ``--append`` flag with ``--append-verify`` for all
# rsync calls.

function UpdateDel(){
    echo "Copying file from " "$1" " to " "$2"

    rsync -cauvn --append --delete-after --exclude=".*" "$1" "$2"

    echo "Continue? (Y/N):"
    read stdin

    if [[ $stdin == [Nn] ]]; then
        echo "Exiting"
        exit
    fi

    if [[ $stdin != [YyNn] ]]; then
        echo "Exiting"
        exit
    fi

    rsync -cau --append --delete-after --exclude=".*" "$1" "$2"
}

function Update(){
    echo "Copying file from " "$1" " to " "$2"

    rsync -cauvn --append --exclude=".*" "$1" "$2"

    echo "Continue? (Y/N):"
    read stdin

    if [[ $stdin == [Nn] ]]; then
        echo "Exiting"
        exit
    fi

    if [[ $stdin != [YyNn] ]]; then
        echo "Exiting"
        exit
    fi

    rsync -cau --append --exclude=".*" "$1" "$2"
}
