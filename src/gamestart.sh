#!/bin/bash

GAMEDIR=
EXEPATH=

if [ -z $1 ]; then
    #start the game
    cd $GAMEDIR
    #check if wine/proton is needed
    ./$EXEPATH
    cd -
elif [ $1 == "del" || $1 == "delete" ]; then
    rm -rf $GAMEDIR
    rm -- '~/.gamma/links/$0'
elif [ $1 == "tag" ]; then
    if [ -z $1 ]; then
        #list tags
    elif [ $ == "add" ]; then
        #add tag
    elif [ $ == "remove" ]; then
        #remove tag
    else; then
        echo Invalid argument: $2
    fi
else; then
    echo Invalid argument: $1
fi
