#!/bin/sh

readonly DIR=`dirname $0`

cp -i $DIR/.zshrc ~
cp -i $DIR/.zshrc.osx ~
cp -i $DIR/.zshrc.linux ~

