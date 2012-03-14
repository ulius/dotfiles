#!/bin/bash

dir=~/dotfiles

cd $dir
vim -c 'set nomore' -c 'so %'  -c 'q!' $dir/vim/vimball/command-t/command-t-1.3.1.vba
cd ~/.vim/ruby/command-t 
ruby extconf.rb 
make 

