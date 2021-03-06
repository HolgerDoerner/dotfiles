# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# source custom shell-scripts
source ~/.scripts/scripts.sh

# activate GOD-mode :-)
set -o vi

shopt -s autocd

alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias sdnf="sudo dnf"
alias v="vim"
alias g="git"
alias ic=". ~/.scripts/instantcoffee.sh"
alias cheat="cheat"
alias wttr="weather"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/hdoerner/.sdkman"
[[ -s "/home/hdoerner/.sdkman/bin/sdkman-init.sh" ]] && source "/home/hdoerner/.sdkman/bin/sdkman-init.sh"
