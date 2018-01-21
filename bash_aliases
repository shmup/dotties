#!/bin/sh

if [ -f ~/.ns1_aliases ]; then
    . ~/.ns1_aliases
fi

# git
alias g='git'
alias gb='g branch'
alias gc='g checkout'
alias gcfs='gc feature/Sprunt'
alias gcl='gc -'
alias gd='g diff'
alias gdc='g diff --cached'
alias gg='g log --graph --oneline --decorate'
alias gl='g log'
alias glfp='g log --follow -p --'
alias glnm='gl --no-merges'
alias glop='g log --pretty=format:"%C(yellow)%h%Cblue%x09%an%Cgreen%x09%ad%x09%Creset%s" --date=short'
alias glopa='g log --pretty=format:"%C(yellow)%h%Cblue%x09%an%Cgreen%x09%ad%x09%Creset%s" --date=short --author="Jared Miller"'
alias glops='glop --stat'
alias glopsa='glop --stat --author="Jared Miller"'
alias gp='g pull'
alias gpr='g pull --rebase'
alias gs='g status'
alias gsa='g submodule add'
alias gsd='g submodule deinit'
alias gsh='g stash'
alias pbr='gpr'
alias gr='g recent'
alias gbl='g for-each-ref --sort=-committerdate refs/heads/'

# tmux
alias ns1='tmux a -dt ns1 || tmux -s ns1'
alias unf='tmux a -dt unf || tmux -s unf'

# dropbox
alias ds='dropbox status'
