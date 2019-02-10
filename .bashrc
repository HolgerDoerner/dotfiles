# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# activate GOD-mode :-)
set -o vi

shopt -s autocd

# COLOR
#
alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --color=auto"

# ALIASES
#
alias sdnf="sudo dnf"
alias v="vim"
alias r="ranger"
alias n="nnn"
alias g="git"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/hdoerner/.sdkman"
[[ -s "/home/hdoerner/.sdkman/bin/sdkman-init.sh" ]] && source "/home/hdoerner/.sdkman/bin/sdkman-init.sh"
