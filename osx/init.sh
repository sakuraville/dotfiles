#!/bin/sh

# nvim
mkdir -p $HOME/.config/nvim
mkdir -p $HOME/.config/dein
ln -sf $HOME/dotfiles/osx/neovim/init.vim $HOME/.config/nvim/init.vim
ln -sf $HOME/dotfiles/osx/neovim/plugins.toml $HOME/.config/dein/plugins.toml
ln -sf $HOME/dotfiles/osx/neovim/lazy.toml $HOME/.config/dein/lazy.toml

# tmux
ln -sf $HOME/dotfiles/osx/tmux/.tmux.conf $HOME/.tmux.conf

# zsh
ln -sf $HOME/dotfiles/osx/zsh/.zshrc $HOME/.zshrc
# ln -sf $HOME/dotfiles/osx/zsh/.dircolors $HOME/.dircolors

# latex
# ln -sf $HOME/dotfiles/Ubuntu/latex/.latexmkrc $HOME/.latexmkrc

