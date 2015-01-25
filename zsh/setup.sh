#!/bin/sh

readonly DIR=`dirname $0`

touch $HOME/.zshrc.profile
cp -i $DIR/.zshrc ~
cp -i $DIR/.zshrc.osx ~
cp -i $DIR/.zshrc.linux ~

