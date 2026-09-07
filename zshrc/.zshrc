if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1="%F{34}%n%F{156}@%F{46}%m %F{154}%~ %f$ "

# custom alias list
alias upsys="brew update; brew upgrade; brew autoremove; brew cleanup --prune=all; brew doctor"
alias dup="~/.config/emacs/bin/./doom upgrade"
alias dsync="~/.config/emacs/bin/./doom sync"
alias ddoc="~/.config/emacs/bin/./doom doctor"
alias ll="ls -lh"
alias la="ls -lA"
alias c="clear"
alias q="exit"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
