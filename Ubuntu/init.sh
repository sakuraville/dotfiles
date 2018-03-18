#!/bin/sh

# i3
ln -sf $HOME/dotfiles/Ubuntu/i3/config $HOME/.config/i3/config
ln -sf $HOME/dotfiles/Ubuntu/i3/i3blocks.conf $HOME/.config/i3/i3blocks.conf

# nvim
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/dein
ln -sf $HOME/dotfiles/Ubuntu/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $HOME/dotfiles/Ubuntu/nvim/plugins.toml $HOME/.config/dein/plugins.toml
ln -sf $HOME/dotfiles/Ubuntu/nvim/lazy.toml $HOME/.config/dein/lazy.toml

# ranger
ln -sf $HOME/dotfiles/Ubuntu/ranger $HOME/.config/ranger

# urxvt
ln -sf $HOME/dotfiles/Ubuntu/urxvt/.Xresources $HOME/.Xresources
xrdb $HOME/.Xresources

# tmux
ln -sf $HOME/dotfiles/Ubuntu/tmux/.tmux.conf $HOME/.tmux.conf

# zsh
ln -sf $HOME/dotfiles/Ubuntu/zsh/.zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/Ubuntu/zsh/.dircolors $HOME/.dircolors

# bash
ln -sf $HOME/dotfiles/Ubuntu/bash/.bashrc $HOME/.bashrc

# latex
ln -sf $HOME/dotfiles/Ubuntu/latex/.latexmkrc $HOME/.latexmkrc

# cli-visualizer
# ln -sf $HOME/Ubuntu/vis ~/.config/vis
