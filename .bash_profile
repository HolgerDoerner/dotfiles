# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export EDITOR=vim
#export TERMINAL=st
export TRUEBROWSER=google-chrome

# User specific environment and startup programs
export ECLIPSE_HOME=$HOME/eclipse/java-2018-12/eclipse
export CATALINA_HOME="$HOME/apache-tomcat-9.0.12"
export DOTNET_ROOT=$HOME/dotnet

PATH=$ECLIPSE_HOME:$CATALINA_HOME/bin:$DOTNET_ROOT:$HOME/.local/bin:$HOME/bin:$PATH

export PATH
