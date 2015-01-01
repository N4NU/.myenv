#!/bin/sh

readonly DIR=`dirname $0`


cp -i $DIR/.vimrc ~
cp -i $DIR/.vimrc.profile ~
cp -ir $DIR/.vim/ ~

read -p "install NeoBundle? " -n 1 -r
echo ''
if [[ $REPLY =~ ^[Yy]$ ]]
then
    curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
fi
