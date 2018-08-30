# configuration for compress
# fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
autoload -U compinit
compinit 

# zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting", defer:2
# history関係
zplug "zsh-users/zsh-history-substring-search"
# タイプ補完
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions", use:'src/_*', lazy:true
zplug "chrissicool/zsh-256color"
# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
# Then, source plugins and add commands to $PATH
zplug load

function scratch () {
    nvim --cmd 'cd ~/Scratches' ~/Scratches/`scratchf $1`
}

function scratchf () {
    echo `date +%F``echo $1 | sed 's/^\(.\)/-\1/'`.md
}

alias 'vim'=nvim
export PATH=$PATH:/Users/jun-iw/.nodebrew/current/bin
