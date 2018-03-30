#!/bin/sh

alias vimmies='/home/jared/.vim/vimmies'

alias makegraph='make -Bnd | make2graph | dot -Tpng -o $HOME/tmp/out.png && o $HOME/tmp/out.png'

alias o='xdg-open "$@" 2>/dev/null'
alias resume='vim -S $HOME/.vim_sessions/$(ls $HOME/.vim_sessions | fzy)'

alias vim2='vim -u ~/src/vim-python/vimrc'

alias findpid="ps axww -o pid,user,%cpu,%mem,start,time,command | fzy | sed 's/^ *//' | cut -f1 -d' '"

alias clear_vim_swp="rm ~/.vim/junk/swp/*"

# git
alias g='git'
alias gb='g branch'
alias gap='git add -p'
alias gcv='git commit -v'
alias gc='g checkout'
alias gcheck='git branch | cut -c 3- | fzy -l 100 | xargs git checkout'
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
alias gsp='g stash pop'
alias pbr='gpr'
alias gr='g recent'
alias gbl='g for-each-ref --sort=-committerdate refs/heads/'
alias src='source env/bin/activate'

alias recent="!r(){git for-each-ref --sort=-committerdate refs/heads --format='%(HEAD)%(color:yellow)%(refname:short)|%(color:bold green)%(committerdate:relative)|%(color:blue)%(subject)|%(color:magenta)%(authorname)%(color:reset)'|column -ts'|'}; r"
alias tmate_copy="tmate show-messages | grep 'ssh session:' | awk '{print \"ssh \"\$NF}' | xclip -selection c"

# tmux
alias ns1='tmux a -dt ns1 || tmux new -s ns1'
alias unf='tmux a -dt unf || tmux new -s unf'
alias scratch='tmux a -dt scratch || tmux new -s scratch'

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

alias share='sudo /home/jared/bin/quark -h 192.168.0.109 -p 7448 -d $PWD'
