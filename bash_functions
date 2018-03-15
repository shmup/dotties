#!/bin/bash

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
