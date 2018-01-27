#!/bin/sh

if [ -f ~/.ns1_aliases ]; then
    . ~/.ns1_aliases
fi

# git
alias g='git'
alias gb='g branch'
alias gap='git add -p'
alias gcv='git commit -v'
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
alias ns1='tmux a -dt ns1 || tmux new -s ns1'
alias unf='tmux a -dt unf || tmux new -s unf'

# alias test="tmux new-session \; \
#   send-keys 'tail -f /var/log/monitor.log' C-m \; \
#   split-window -v -p 75 \; \
#   split-window -h -p 30 \; \
#   send-keys 'top' C-m \; \
#   select-pane -t 1 \; \
#   split-window -v \; \
#   send-keys 'weechat' C-m \;"

# dropbox
alias ds='dropbox status'
