#!/bin/sh

readonly DIR=`dirname $0`

cp -i $DIR/.vimrc ~
cp -i $DIR/.vimrc.profile ~
cp -ir $DIR/.vim/ ~

