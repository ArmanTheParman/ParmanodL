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

function set_terminal { printf '\e[8;40;140t' ; }

function d { cd $HOME/Desktop ; a ; }

function pn { cd $HOME/parman_programs/parmanode/ ; a ; }
function pp { cd $HOME/parman_programs ; a ; }
function pl { cd $HOME/parman_programs/ParmanodL ; a ; }
