#!/bin/bash
set -eux

dotfiles="
config/i3/config
gitconfig
tmux.conf
vimrc
Xdefaults
xinitrc
zshrc
"

for f in $dotfiles; do
    ln -svf "$(dirname $(readlink -f $0))"/"${f}" ~/."${f}"
done
