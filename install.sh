#!/bin/zsh

set +e

function link_if_missing() {
  SRC=$1
  DEST=$2

  if ! [ -L $DEST ]; then
    ln -ivs $SRC $DEST
  else
    echo "Skipping, link already exists: $SRC"
  fi
}

link_if_missing $PWD/vim		$HOME/.vim
link_if_missing $PWD/ackrc		$HOME/.ackrc
link_if_missing $PWD/gitconfig		$HOME/.gitconfig
link_if_missing $PWD/vimrc		$HOME/.vimrc
link_if_missing $PWD/gemrc		$HOME/.gemrc
link_if_missing $PWD/githelpers      	$HOME/.githelpers
