function a {
clear
set_terminal
tput setaf 5 #sets colour
echo "CURRENT DIRECTORY: $(pwd)"
tput sgr0
if [[ -z "$1" ]] ; then ls -G ; fi
if [[ $1 == "lah" ]] ; then ls -Glah ; fi
echo ""
tput setaf 5
echo "############################################################################################################################################" 
tput sgr0
echo ""
}

function aa { a "lah" ; }

function c { 
#dir=$1
cd $1
a
}

function set_terminal { printf '\e[8;40;140t' ; }

function .. { c .. ; }
