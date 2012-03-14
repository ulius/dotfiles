# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export PATH=$PATH:/var/www/html/health/Symfony/app:/usr/local/bin/:/usr/bin
export NODE_PATH=$NODE_PATH:/usr/local/src/doctorjs/lib/jsctags:
export EDITOR=vim
export LANG=.en_US. # so pstree displays correctly

# git autocomplete on bash
source ~/.git-completion.bash

cd /var/www/html/health/Symfony/src/Health/TrackBundle/

