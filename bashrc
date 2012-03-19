# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# Paths ----------------------------------------------------------------------
<<<<<<< HEAD
export PATH=$PATH:/var/www/html/health/Symfony/app:/usr/local/bin/:/usr/bin:/home/uli/html/event/app
=======
export PATH=$PATH:/usr/local/bin/:/usr/bin
>>>>>>> fad41912fc0c53b320e674c933446b4a51444c2e
export NODE_PATH=$NODE_PATH:/usr/local/src/doctorjs/lib/jsctags
export EDITOR=vim
export LANG=.en_US. # so pstree displays correctly

alias j='z'

# Useful libs ----------------------------------------------------------------------
source ~/dotfiles/lib/git-completion.bash 
source ~/dotfiles/lib/z/z.sh

# Machine specific bash  ----------------------------------------------------------------------
if [ -f ~/.bashrc_local ]; then
	. ~/.bashrc_local
fi



if [ -f ~/.bashrc_local ]; then
	. ~/.bashrc_local
fi
