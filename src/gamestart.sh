#!/bin/bash

GAMEDIR=
EXEPATH=

if [ -z "$1" ]; then
    #start the game
    cd $GAMEDIR
    #check if wine/proton is needed
    ./$EXEPATH
    cd -
else
    case $1 in
        del | d | delete)
            rm -rf $GAMEDIR
            rm -- "~/.gamma/links/$0"
            ;;
        tag | t)
            if [ -z "$2" && -z "$3"]; then
                #list tags for the game
                echo $0 has the following tags:
                ls $GAMEDIR/.gammatags
            else
                case $2 in
                    a | add)
                        #add tag
                        mkdir -p $GAMEDIR/.gammatags && touch $GAMEDIR/.gammatags/$3
                        ;;
                    rm | remove)
                        #remove tag
                        rm -f $GAMEDIR/.gammatags/$3
                        ;;
                    *)
                        echo Invalid argument
                        exit 1
                        ;;
                esac
            fi
        *)
            echo Invalid argument
            exit 1
            ;;
    esac
fi
