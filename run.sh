#!/bin/bash

git config --global user.name "sakuraville"
git config --global user.email abc22921@gmail.com
git config --global core.editor 'vim -c "set fenc=utf-8"'
git config --global color.ui auto
if [ ! -d $HOME/dotfiles ]; then
  git clone "https://github.com/sakuraville/dotfiles" ~/dotfiles
fi

# default
sh $HOME/dotfiles/common/init.sh
#sh $HOME/dotfiles/ubuntu/init.sh

