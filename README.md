# PARMANODL

## MAKE YOUR OWN PARMANODL

ParmanodL is a computer running Linux and Parmanode which can be purchased ready made with
the blockchain syced.

But this is how you make your own.

Download Linux Mint iso.

    cd ~/Downloads
    curl -LO https://mirrors.advancedhosters.com/linuxmint/isos/stable/21.2/linuxmint-21.2-cinnamon-64bit.iso

hash the downloaded file. The command is:

    shasum -a 256 linuxmint-21.2-cinnamon-64bit.iso

You should get:

    116578dda0e03f1421c214acdd66043b586e7afc7474e0796c150ac164a90a2a

Then flash the file to a usb drive - a thumb drive or even a full external SSD drive. The 1Tb
drive you need for the blockchain will do nicely; it's temporary.

Use Balena Etcher to flash the iso file to the drive. This will make it a Linux drive and no longer
readable by a Windows or Mac computer, so when it's finished flashing, ignore the pop-up 
oferring you to format it.

Then, on the computer you wish to install the operating system, figure out how to
boot from the USB. Every computer will be different; Google is your friend here.

You'll then get a Linux boot menu. Choose the OEM install. You'll install the software
as though you were the computer manufacturer, preparing the software for a customer.
All your settings you choose are temporary, so don't stress about what choices you make
during the install.

Once installed, you'll see an icon on the desktop to "ship to end user". Double click it.
Then dismiss the pop up and restart the computer. You'll be asked to remove the USB drive.

This time when the computer boots up, you'll make your computer account and fill in details
that will remain.

Next, make sure you have an internet connection and run the following commands in terminal 
(black icon on the tasbar at the bottom), one after the other, and hit <enter> after each
line. Copy/paste is best:

    sudo apt update -y ; sudo apt install git -y
    cd ~/Desktop ; git clone http://github.com/armantheparman/parmanode.git

The above commands will install git, then use git to download Parmanode to the desktop (this
is the best place for it to live, try not to move it). 

The next commands will create a script which sits on the desktop and you can double click it
to run Parmanode. You'll get a pop up and choose to "run in terminal".

    echo '#!/bin/bash' > ~/Desktop/run_parmanode.sh
    echo "cd ; cd Desktop ; cd parmanode ; ./run_parmanode.sh" >> $HOME/Desktop/run_parmanode.sh
    sudo chmod +x $HOME/Desktop/run_parmanode.sh



