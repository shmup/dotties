#!/bin/bash

alias bld='BUILD=$BUILD "$@"'

function log {
  JOURNALDIR=/u/ddrucker/journals
  JOURNALFILE="$JOURNALDIR/$(date +'%Y-%m-%d_%T').txt"
  if [[ $# == 0 ]]; then
    vim +startinsert $JOURNALFILE
  elif [[ $1 == "last" ]]; then
    cat $(find $JOURNALDIR | sort | tail -1)
  elif [[ $1 == "editlast" || $1 == "elast" ]]; then
    vim +startinsert $(find $JOURNALDIR | sort | tail -1)
  else
    echo $@ >> $JOURNALFILE
  fi
}

# color it red
function delete_branch {
  BRANCH=$(git branch | fzy | xargs)
  read -p "$(echo -e $RED"Delete $BRANCH? $RESET (y/n) ")" -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    git branch -D $BRANCH
  fi
}

function ratio {
  cd /home/jared/src/ratiofix/src
  source ../env/bin/activate
  python ratiofix/_ratiofix.py ratiofix.conf
}

function todo {
  cd $PORTAL_DIR
  rg TODO
  rg FIXME
  rg NOTE
}

function no_irc {
  alias mosh='echo NOPE'
  alias ssh='echo NOPE'
}

function yes_irc {
  unalias mosh
  unalias ssh
}

# fshow - git commit browser
# ctrl-m or return to view diff
# ctrl-s to sort
fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}
