#!/bin/sh

readonly DIR=`dirname $0`

confirm() {
  # call with a prompt string or use a default
  read -r -p "${1:-Are you sure? [y/N]} " response
  case $response in
    [yY][eE][sS]|[yY]) true ;;
    *) false ;;
  esac
}

cp -i $DIR/.vimrc ~
cp -i $DIR/.vimrc.profile ~
cp -ri $DIR/.vim/ ~

confirm 'install NeoBundle? [y/N]' \
 && curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

confirm 'install Vundle? [y/N]' \
 && git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim




