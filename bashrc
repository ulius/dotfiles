# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# Paths ----------------------------------------------------------------------
export PATH=$PATH:/usr/local/bin/:/usr/bin
export NODE_PATH=$NODE_PATH:/usr/local/src/doctorjs/lib/jsctags:/usr/local/lib/node_modules
export EDITOR=vim
export LANG=en_US.UTF-8 # so pstree displays correctly
export LC_ALL=en_US.UTF-8

alias j='z'

# Useful libs ----------------------------------------------------------------------
source ~/dotfiles/lib/git-completion.bash 
source ~/dotfiles/lib/z/z.sh

# Needed or vim has errors in TMUX -------------------------
alias tmux='tmux -2 -u'
alias vim='env TERM=xterm-256color vim'

# Machine specific bash  ----------------------------------------------------------------------
if [ -f ~/.bashrc_local ]; then
	. ~/.bashrc_local
fi
