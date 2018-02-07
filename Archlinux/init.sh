#!/bin/sh
# i3
ln -sf $HOME/dotfiles/i3/config $HOME/.config/i3/config
# nvim
ln -sf $HOME/dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $HOME/dotfiles/nvim/plugins.toml $HOME/.config/dein/plugins.toml
ln -sf $HOME/dotfiles/nvim/lazy.toml $HOME/.config/dein/lazy.toml
# ranger
ln -sf $HOME/dotfiles/ranger $HOME/.config/ranger
# urxvt
ln -sf $HOME/dotfiles/urxvt/.Xresources $HOME/.Xresources
xrdb $HOME/.Xresources
# tmux
ln -sf $HOME/dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
# zsh
ln -sf $HOME/dotfiles/zsh/.zshrc $HOME/.zshrc
# bash
ln -sf $HOME/dotfiles/bash/.bashrc $HOME/.bashrc
# latex
ln -sf $HOME/dotfiles/latex/.latexmkrc $HOME/.latexmkrc
# cli-visualizer
# ln -sf $HOME/dotfiles/vis ~/.config/vis
# Xilinx
# ln -sf $HOME/dotfiles/vivado/run-vivado /usr/local/bin/run-vivado
# ln -sf $HOME/dotfiles/vivado/run-vivado-hls /usr/local/bin/run-vivado-hls
# ln -sf $HOME/dotfiles/vivado/run-xilinx-sdk /usr/local/bin/run-xilinx-sdk
# ln -sf $HOME/dotfiles/vivado/Xilinx-Vivado.desktop ~/.local/share/applications/
# ln -sf $HOME/dotfiles/vivado/Xilinx-SDK.desktop ~/.local/share/applications/
# ln -sf $HOME/dotfiles/vivado/Xilinx-DocNav.desktop ~/.local/share/applications/
# ln -sf $HOME/dotfiles/vivado/Xilinx-Vivado_HLS.desktop ~/.local/share/applications/
