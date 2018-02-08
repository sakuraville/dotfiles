#!/bin/sh
# i3
ln -sf $HOME/dotfiles/Archlinux/i3/config $HOME/.config/i3/config
# nvim
ln -sf $HOME/dotfiles/Archlinux/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $HOME/dotfiles/Archlinux/nvim/plugins.toml $HOME/.config/dein/plugins.toml
ln -sf $HOME/dotfiles/Archlinux/nvim/lazy.toml $HOME/.config/dein/lazy.toml
# ranger
ln -sf $HOME/dotfiles/Archlinux/ranger $HOME/.config/ranger
# urxvt
ln -sf $HOME/dotfiles/Archlinux/urxvt/.Xresources $HOME/.Xresources
xrdb $HOME/.Xresources
# tmux
ln -sf $HOME/dotfiles/Archlinux/tmux/.tmux.conf $HOME/.tmux.conf
# zsh
ln -sf $HOME/dotfiles/Archlinux/zsh/.zshrc $HOME/.zshrc
# bash
ln -sf $HOME/dotfiles/Archlinux/bash/.bashrc $HOME/.bashrc
# latex
ln -sf $HOME/dotfiles/Archlinux/latex/.latexmkrc $HOME/.latexmkrc
# cli-visualizer
# ln -sf $HOME/dotfiles/vis ~/.config/vis
# Xilinx
# ln -sf $HOME/dotfiles/Archlinux/vivado/run-vivado /usr/local/bin/run-vivado
# ln -sf $HOME/dotfiles/Archlinux/vivado/run-vivado-hls /usr/local/bin/run-vivado-hls
# ln -sf $HOME/dotfiles/Archlinux/vivado/run-xilinx-sdk /usr/local/bin/run-xilinx-sdk
# ln -sf $HOME/dotfiles/Archlinux/vivado/Xilinx-Vivado.desktop ~/.local/share/applications/
# ln -sf $HOME/dotfiles/Archlinux/vivado/Xilinx-SDK.desktop ~/.local/share/applications/
# ln -sf $HOME/dotfiles/Archlinux/vivado/Xilinx-DocNav.desktop ~/.local/share/applications/
# ln -sf $HOME/dotfiles/Archlinux/vivado/Xilinx-Vivado_HLS.desktop ~/.local/share/applications/
