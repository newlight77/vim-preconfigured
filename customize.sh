#!/bin/bash

DIR=${0%/*}
echo "current dir: " $DIR

if [ ! -d "$DIR" ]; then DIR="$PWD"; fi

echo "*** ------  Customize ------ ***" 1>&2

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


DIR=/tmp/vim-preconfigured

if [ ! -d "$DIR" ]; then
  git clone https://github.com/newlight77/vim-preconfigured.git /tmp/vim-preconfigured && cd $DIR
else
  cd $DIR && git pull origin main
fi

echo "creating folder $HOME/.config/vim for custm Vim" 1>&2
mkdir -p $HOME/.config/vim

configDir=$HOME/.config/vim/
echo "creating folder $HOME/.config/vim" 1>&2
mkdir -p $configDir
for file in vim/*.vim ; do
  echo "copying $file to $configDir" 1>&2
  cp $file $configDir
done

pluginsDir=$HOME/.config/vim/after/plugin/
echo "creating folder $HOME/.config/vim/after/plugin for Vim" 1>&2
mkdir -p $pluginsDir
for file2 in vim/after/plugin/* ; do
  echo "copying $file2 to $pluginsDir" 1>&2
  cp $file2 $pluginsDir
done

echo "writing contents of vim/.vimrc to $HOME/.vimrc" 1>&2
mv $HOME/.vimrc                            $HOME/.vimrc.$(date +"%Y%m%d%H%M%S")
cat vim/.vimrc                           > $HOME/.vimrc


echo "*** ------  Customize Vim/NeoVim Done ------ ***" 1>&2

