# aliases for the functions defined here
# are placed in ~/.bashrc

# cheat-sheats made easy ;-)
function cheat() {
    curl https://cheat.sh/${1}
}

# get weather info
function weather() {
    curl https://wttr.in/${1}
}
