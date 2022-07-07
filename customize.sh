#!/bin/bash

DIR=${0%/*}
echo "current dir: " $DIR

if [ ! -d "$DIR" ]; then DIR="$PWD"; fi

echo "*** ------  Customize ------ ***" 1>&2

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

DIR=$HOME/.config/vim

if [ ! -d "$DIR" ]; then
  echo "cloning vim-preconfigured to $DIR" 1>&2
  git clone https://github.com/newlight77/vim-preconfigured.git $DIR
else
  cd $DIR && git pull origin main
fi

echo "writing contents of vim/.vimrc to $HOME/.vimrc" 1>&2
if [ ! -s $HOME/.vimrc ]; then
  mv $HOME/.vimrc                            $HOME/.vimrc.$(date +"%Y%m%d%H%M%S")
else
  rm $HOME/.vimrc
fi

ln -s $HOME/.config/vim/.vimrc $HOME/.vimrc


echo "*** ------  Customize Vim/NeoVim Done ------ ***" 1>&2

