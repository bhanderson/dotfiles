dotfiles
========

trying again

##Installation:
To install, clone it somewhere. I use ~/code/dotfiles
#####For vim
     cd ~/code/dotfiles
     git submodule init
     git submodule update
     ln -s ~/code/dotfiles/vimrc ~/.vimrc
     ln -s ~/code/dotfiles/.vim ~/.vim
open up vim
press enter a few times then enter :BundleInstall 
then exit vim

#####For git
     ln -s ~/code/ditfiles/gitconfig ~/.gitconfig
