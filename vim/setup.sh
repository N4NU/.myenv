#!/bin/sh

readonly DIR=`dirname $0`

read -p "install NeoBundle? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
fi

cp -i $DIR/.vimrc ~
cp -i $DIR/.vimrc.profile ~
cp -ir $DIR/.vim/ ~

