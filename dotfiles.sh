#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 fromlocal|tolocal"
    exit -1
fi

case $1 in 
    "tolocal" ) 
        cp ./files/tmux.backup ~/.tmux.conf
        cp ./files/vimrc.backup ~/.vimrc
        cp ./files/custom.zsh-theme.backup ~/.oh-my-zsh/themes/custom.zsh-theme
        echo "Install: Done!"
    ;;
    "fromlocal" ) 
        cp ~/.tmux.conf ./files/tmux.backup
        cp ~/.vimrc ./files/vimrc.backup
        cp ~/.oh-my-zsh/themes/custom.zsh-theme ./files/custom.zsh-theme.backup
        echo "Update: Done!"
    ;;
    * )
        echo "Usage: $0 install|update"
        exit -1
    ;;
esac
