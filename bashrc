# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# Paths ----------------------------------------------------------------------
export PATH=$PATH:/usr/local/bin/:/usr/bin
export PATH=$PATH:~/dotfiles/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/src/racket-5.3.4/bin
export NODE_PATH=$NODE_PATH:/usr/local/src/doctorjs/lib/jsctags:/usr/local/lib/node_modules
export EDITOR=vim
export LANG=en_US.UTF-8 # so pstree displays correctly
export LC_ALL=en_US.UTF-8
export PATH=$PATH:/home/uli/play/play-2.2.0-M1

alias j='z'

# Useful libs ----------------------------------------------------------------------
source ~/dotfiles/lib/git-completion.bash 
source ~/dotfiles/lib/z/z.sh

# Needed or vim has errors in TMUX -------------------------
[ -z "$TMUX" ] && export TERM=xterm-256color
alias tmux='tmux -2 -u'

# Avoid carpal tunnel in Rails -------------------------
alias be='bundle exec'

# Less needs to see color
export LESS=-RFX

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Tmuxinator
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator




# Machine specific bash  ----------------------------------------------------------------------
if [ -f ~/.bashrc_local ]; then
	. ~/.bashrc_local
fi
