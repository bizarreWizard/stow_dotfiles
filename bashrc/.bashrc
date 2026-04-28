#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1="\[\e[38;5;34m\]\u\[\e[38;5;156m\]@\[\e[38;5;46m\]\h \[\e[38;5;154m\]\w \[\033[0m\]$ "

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# custom alias list
alias upsys="sudo pacman -Syu"
alias doomup=".config/emacs/bin/./doom upgrade"
alias doomsync=".config/emacs/bin/./doom sync"
alias doomdoc=".config/emacs/bin/./doom doctor"
alias slp="systemctl suspend"
alias ll="ls -l"
alias la="ls -la"
alias c="clear"
alias q="exit"
