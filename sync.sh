#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc gitconfig vim vimrc inputrc fonts ctags tmux.conf"    # list of files/folders to symlink in homedir


# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# download all vim/bundles from their github repos
cd $dir
git submodule update --init

##########################
# Install Command-T plugin
# To avoid using ruby's bundler, I have to source the vimball then configure/make the C extension
# 
# If you get errors, make the C extension with the same
# version of ruby vim was installed with:
# vim --version
# ruby --version
#########################
cd $dir
# set nomore lets vim quit out after sourcing the vimball
vim -c 'set nomore' -c 'so %'  -c 'q!' $dir/vim/vimball/command-t/command-t-1.3.1.vba
# make the c extension so command-t works + is faster
cd ~/.vim/ruby/command-t 
/usr/bin/ruby185 extconf.rb 
make 
cd $dir

echo ""
echo "+==================================+"
echo "| Enjoy your new and improved VIM! |"
echo "+==================================+"

