#                                     _              
#                             _______| |__  _ __ ___ 
#                            |_  / __| '_ \| '__/ __| 
#                           _ / /\__ \ | | | | | (__ 
#                          (_)___|___/_| |_|_|  \___|
#

# INPORTS {{{
# source ~/.bashrc
source ~/.zplug/init.zsh
# }}}

# PLUGINS {{{
# zplug
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions", defer:2
zplug "zsh-users/zsh-completions"
zplug load
# export ZSH_HIGHLIGHT_STYLES[path]='fg=081'

# zsh-completions
# if [ -e .zplug/repos/zsh-users/zsh-completions ]; then
#     fpath=(.zplug/repos/zsh-users/zsh-completions/src $fpath)
# fi

autoload -Uz compinit
compinit -i
# }}}

# HISTORY {{{
# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=10000
SAVEHIST=100000

# share .zshhistory
setopt inc_append_history
setopt share_history

# cdr
if [[ -n $(echo ${^fpath}/chpwd_recent_dirs(N)) && -n $(echo ${^fpath}/cdr(N)) ]]; then
    autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
    add-zsh-hook chpwd chpwd_recent_dirs
    zstyle ':completion:*' recent-dirs-insert both
    zstyle ':chpwd:*' recent-dirs-default true
    zstyle ':chpwd:*' recent-dirs-max 1000
    zstyle ':chpwd:*' recent-dirs-file "$HOME/.cache/chpwd-recent-dirs"
fi
# }}}

# COLOR {{{
# remove file mark
# unsetopt list_types

# color at completion
autoload colors
zstyle ':completion:*' verbose yes
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# less
export LESS='-R'

# man
export MANPAGER='less -R'
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;33m") \
        LESS_TERMCAP_md=$(printf "\e[1;36m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
        man "$@"
}
# }}}

# PROMPT {{{
# prompt
# colors
# 
# local prompt_location="%F{cyan}%B%~%b%f"
# local promot_mark="%B%(?,%F{magenta},%F{red})%(!,#,❯)%b"
# 
# # vcs_infoロード
# autoload -Uz vcs_info
# # PROMPT変数内で変数参照する
# setopt prompt_subst
# 
# # vcsの表示
# zstyle ':vcs_info:*' formats '%s][* %F{green}%b%f'
# zstyle ':vcs_info:*' actionformats '%s][* %F{green}%b%f(%F{red}%a%f)'
# 
# # プロンプト表示直前にvcs_info呼び出し
# precmd() {
#     vcs_info
# }
# 
# # vcs_info_msg_0_の書式設定
# # zstyle ':vcs_info:git:*' check-for-changes true
# zstyle ':vcs_info:git:*' check-for-changes false
# zstyle ':vcs_info:git:*' stagedstr         "%F{yellow}!%f"
# zstyle ':vcs_info:git:*' unstagedstr       "%F{red}+%f"
# zstyle ':vcs_info:*'     formats           " (%F{green}%b%f%c%u)"
# zstyle ':vcs_info:*'     actionformats     ' (%b|%a)'
# 
# # プロンプト
# PROMPT="
# ${prompt_location}"'$vcs_info_msg_0_'"
# ${promot_mark} "

#PS1="%{$fg[cyan]%}[${USER}@${HOST%%.*} %1~]%(!.#.$)${reset_color} "
PS1="[${USER}@${HOST%%.*} %1~]%(!.#.$)${reset_color} "
# }}}

# ALIAS {{{
# general
alias ls='ls -h --color=always'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias vim='nvim'
alias du='du -sh *'
alias grep='grep --color=always'
alias reload='source ~/.zshrc'
alias fgrep='find ./ | grep'

# git
alias g='git'
alias gb='git branch'
alias gl='git log --pretty=format:"%C(yellow)%h%Creset %C(magenta)%ci%Creset%n%C(cyan)%an <%ae>%Creset%n%B"'
alias glp='git log -p'
alias glg='git log --graph --pretty=format:"%C(yellow)%h%Creset %C(magenta)%ci%Creset%n%C(cyan)%an <%ae>%Creset%n%B"'
alias gco='git checkout'
alias gd='git diff'
alias gdh='git diff HEAD'
alias gds='git diff --stat'
alias gdt='git difftool'
alias gst='git status'
alias gp='git pull'

# docker
# alias d='docker'
# alias dps='docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Ports}}\t{{.Status}}"'
# }}}

# KEY {{{
# key bind
typeset -A key

if [[ -n "${terminfo}" ]]; then
    key[Home]="${terminfo[khome]}"
    key[End]="${terminfo[kend]}"
    key[Insert]="${terminfo[kich1]}"
    key[Delete]="${terminfo[kdch1]}"
    key[Up]="${terminfo[kcuu1]}"
    key[Down]="${terminfo[kcud1]}"
    key[Left]="${terminfo[kcub1]}"
    key[Right]="${terminfo[kcuf1]}"
    key[PageUp]="${terminfo[kpp]}"
    key[PageDown]="${terminfo[knp]}"

    # setup key accordingly
    [[ -n "${key[Home]}"     ]]  && bindkey  "${key[Home]}"     beginning-of-line
    [[ -n "${key[End]}"      ]]  && bindkey  "${key[End]}"      end-of-line
    [[ -n "${key[Insert]}"   ]]  && bindkey  "${key[Insert]}"   overwrite-mode
    [[ -n "${key[Delete]}"   ]]  && bindkey  "${key[Delete]}"   delete-char
    [[ -n "${key[Up]}"       ]]  && bindkey  "${key[Up]}"       up-line-or-history
    [[ -n "${key[Down]}"     ]]  && bindkey  "${key[Down]}"     down-line-or-history
    [[ -n "${key[Left]}"     ]]  && bindkey  "${key[Left]}"     backward-char
    [[ -n "${key[Right]}"    ]]  && bindkey  "${key[Right]}"    forward-char
    [[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"   beginning-of-buffer-or-history
    [[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}" end-of-buffer-or-history
fi
# }}}

# OTHER {{{
# neovim
export XDG_CONFIG_HOME=~/.config

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# golang
# export GOROOT=/usr/lib/go
# export GOPATH=$HOME/dev
# export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# tmux
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux
# }}}

# LOCAL {{{
# Load local setting
if [ -e ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
# }}}
