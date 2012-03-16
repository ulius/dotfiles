# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# Paths ----------------------------------------------------------------------
export PATH=$PATH:/var/www/html/health/Symfony/app:/usr/local/bin/:/usr/bin
export NODE_PATH=$NODE_PATH:/usr/local/src/doctorjs/lib/jsctags:
export EDITOR=vim
export LANG=.en_US. # so pstree displays correctly

alias j='z'

# Useful libs ----------------------------------------------------------------------
source ~/dotfiles/lib/git-completion.bash 
source ~/dotfiles/lib/z/z.sh


