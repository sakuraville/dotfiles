#!/bin/sh
# i3
ln -sf $HOME/arch_dotfiles/i3/config $HOME/.config/i3/config
# nvim
ln -sf $HOME/arch_dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim
ln -sf $HOME/arch_dotfiles/nvim/dein.toml $HOME/.config/nvim/dein.toml
ln -sf $HOME/arch_dotfiles/nvim/dein_lazy.toml $HOME/.config/nvim/dein_lazy.toml
# ranger
ln -sf $HOME/arch_dotfiles/ranger $HOME/.config/ranger
# urxvt
ln -sf $HOME/arch_dotfiles/urxvt/.Xresources $HOME/.Xresources
xrdb $HOME/.Xresources
# tmux
ln -sf $HOME/arch_dotfiles/tmux/.tmux.conf $HOME/.tmux.conf
# cli-visualizer
# ln -sf $HOME/arch_dotfiles/vis ~/.config/vis
# X11
# cp X11/xorg.conf /usr/share/X11/xorg.conf.d/20-intel.conf
# Xilinx
# ln -sf $HOME/arch_dotfiles/vivado/run-vivado /usr/local/bin/run-vivado
# ln -sf $HOME/arch_dotfiles/vivado/run-vivado-hls /usr/local/bin/run-vivado-hls
# ln -sf $HOME/arch_dotfiles/vivado/run-xilinx-sdk /usr/local/bin/run-xilinx-sdk
# ln -sf $HOME/arch_dotfiles/vivado/Xilinx-Vivado.desktop ~/.local/share/applications/
# ln -sf $HOME/arch_dotfiles/vivado/Xilinx-SDK.desktop ~/.local/share/applications/
# ln -sf $HOME/arch_dotfiles/vivado/Xilinx-DocNav.desktop ~/.local/share/applications/
# ln -sf $HOME/arch_dotfiles/vivado/Xilinx-Vivado_HLS.desktop ~/.local/share/applications/
