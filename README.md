dotfiles
========

Makes it a little easier to keep my configuration from pc to pc

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

in order to use command-t one of the vim plugins I have for browsing files quickly you must install ruby

     sudo apt-get install ruby-dev ruby
     cd ~/code/dotfiles/.vim/bundle/Command-T/ruby/command-t
     ruby extconf.rb
     make

then thats it

#####For git
     ln -s ~/code/ditfiles/gitconfig ~/.gitconfig
