#! /bin/bash

# always call/execute this script as '. instantcoffee.sh' !
# this way the script is run inside of the current shell instead
# of spawning a new one and the 'JAVA_HOME' variable can be
# set correctly for the current shell.

DIR=~/jdk/.java

function setGlobal() {
    case $1 in
        8)
            rm $DIR 2> /dev/null
            ln -sfr $DIR/../jdk1.8.0_192 $DIR
            ;;
        11)
            rm $DIR 2> /dev/null
            ln -sfr $DIR/../jdk-11.0.1 $DIR
            ;;
        12)
            rm $DIR 2> /dev/null
            ln -sfr $DIR/../jdk-12 $DIR
            ;;
        *)
           echo "could not find jdk..." 
    esac
}

function setShell() {
    case $1 in
        8)
            export -p JAVA_HOME=$DIR/../jdk/jdk1.8.0_192
            ;;
        11)
            export -p JAVA_HOME=$DIR/../jdk-11.0.1
            ;;
        12)
            export -p JAVA_HOME=$DIR/../jdk-12
            ;;
        *)
            echo "could not find jdk..."
            ;;
    esac
}

function listInstalledVersions() {
    for i in $(ls $DIR/..); do
        echo $i
    done
}

case $1 in
    "global")
        setGlobal $2
        ;;

    "shell")
        setShell $2
        ;;

    "list")
        listInstalledVersions
        ;;

    *)
        echo "Usage: '. instantcoffee.sh <option> <java version>'"
        echo ""
        echo "Options are:"
        echo "    global = switch java-version globaly"
        echo "    shell = switch java-version for current shell only"
        ;;
esac
