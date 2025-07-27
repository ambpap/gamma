#!/bin/bash

GAMEDIR=
EXEPATH=

is_exe=false

if [[ "$EXEPATH" == *.exe ]]; then
    is_exe=true
fi

if [ -z "$1" ]; then
    ##############################
    #    LAUNCH THE GAME HERE    #
    ##############################

    cd $GAMEDIR #go to game directory
    if [[ "$is_exe" == true ]]; then
        if command -v proton &> /dev/null; then
            proton run ./$EXEPATH
        elif command -v wine &> /dev/null; then
            echo "Proton not found, running with wine"
            wine ./$EXEPATH
        else
            echo Proton/Wine not found, cannot execute .exe file
            exit 2
        #launch with proton/wine
        wine ./$EXEPATH
    else
        ./$EXEPATH
    fi
    cd - #go to original directory

    ##############################
    #      END OF LAUNCHING      #
    ##############################
else
    case $1 in
        del | d | delete)
            rm -rf $GAMEDIR #remove game files
            rm -- "~/.gamma/links/$0" #remove this script
            ;;
        tag | t)
            if [ -z "$2" && -z "$3"]; then
                #list tags for the game
                ls $GAMEDIR/.gammatags
            else
            case $2 in
                a | add)
                    #add tag
                    mkdir -p $GAMEDIR/.gammatags && \
                        touch $GAMEDIR/.gammatags/$3
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
