# PARMANODL v2.0.0

ParmanodL is a Linux computer that runs the Parmanode Script Software - an Easy AF Bitcoin node installation package.

## Make your own ParmanodL on a Raspberry Pi 4 (64 bit)

Have a Pi4 ready, a 32GB+ microSD card, and a regular computer to build the image (not Windows)

![OS available](https://parmanode.com/wp-content/uploads/2023/09/Screen-Shot-2023-09-19-at-4.28.57-pm.png)

### Steps

Open terminal, copay and paste this ONE LINE, then hit enter.

    /bin/bash -c "$(curl -fsSL https://parmanode.com/get_parmanodl_installer)" 

This will place an installer on your desktop. Double click it (to see the get program
code, simply paste the url portion of the line above into a browser or curl. To see
the installer code, visit this link:

     https://github.com/ArmanTheParman/Parmanode/tree/master/ParmanodL

The installer will work on a Mac or Linux. In summary, it builds a Parmanode OS image
file, then it writes it to a microSD card for use in a Pi4. The Pi can be accessed by
SSH (executable provided) or it can be used like a desktop computer with a graphical
user interface. The latter option allows wallet software such as Electrum or Sparrow
to be used on the Pi. Otherwise, it would be used just as a Bitcoin "server".

In more detail, this is what the Installer executable does (for even more detail,
you can read the code, it should be straightforward reading with pleny of comments):


    1)   Prints an introduction
    
    2)   Detects the type of computer you're using
    
    3)   Makes sure you have the necessary programs required to build the software

    4)   Fetches the latest version of Parmanode on your computer (you don't necessarily
         have to keep it, it's just needed for the useful functions it contains.
    
    5)   Creates a temporary direcotry, $HOME/ParmanodL, and a configuration 
         direcory HOME/.parmanode
    
    6)   Downloads, SHA256 verifies, and unzips Raspberry Pi OS
    
    7)   Mounts the Pi OS image file on to the host's file system, but for Mac, it mounts
         to a temporary Linux Docker container.
    
    8)   Essential modifications are made to the Pi OS to turn it into Parmanode OS.
    
    9)   The user is prompted to insert the target microSD card which gets detected by
         the software
    
    10)  Parmanode OS is flashed onto the the microSD card
    
    11)  The known_hosts files is tidied up, removing any previous ParmanodL entries to 
         avoid confusing error messages later for the user. 

    12)  An executable is made that sits on the desktop. It will tidy known_hosts with
         each execution, and ssh to parman@parmanodl.local

    13)  Withing the Parmanodl OS SSH window, the user will be prompted to change the 
         password from 'parmanodl'. The username 'parman' remains, sorry.

    14)  There is a prompt to type "menu" which runs the Parmanode software. Parmanode
         is already configured to the "installed" state. Apps can simply be installed from 
         the menu options.

    15)  The installer program, upon finishing, will tidy up any mess left on the building
         computer, offer to delete Docker if it was installed, and delete itself from 
         the desktop, leaving only the Run_ParmanodL executable file for SSH access.
 
This fairly elaborate method of creating Parmanode OS is opposed to having me create the
image on my computer and distributing a file. While that would have been easier, it requires
the users to trust my build. This way, effectively every step of the way is trustless - the 
code being used is open to read.
 
## Make your own ParmanodL on a regular Linux Desktop Computer

This would be the most powerful setup. Get an inexpensive refurbished desktop computer
with a processor not needing to be much better than an intel i5. Wipe Windows off it and
flash it with a Debian based Linux distribution; I like Linux Mint, and I have guides to
set this up on my website. Then, on my other website, https://parmanode.com, there are
instructions to install parmanode (single line of code).

## The ParmaMac

I'm really having fun with names here. This is a Mac that runs Parmanode. It's not idea
as more Docker is needed, and some programs I just couldn't get Mac versions to work, but
you can use it to get Bitcoin Core running with a Fulcrum server and attach an external
SSD drive and away you go.

