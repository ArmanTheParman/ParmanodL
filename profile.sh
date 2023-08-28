#!/bin/bash

#Source this file from ~/.bashrc
#That means at the end of the bashrc file, add a line (without the hash):
#source /path/to/wherever/you/put/this/file/profile.sh/
#this file will then make the custom_functions available.

for file in $HOME/parmanodL/custom_functions/*.sh 
do
source $file
done

#Do make sure the path to "custom_functions" above is correct, othewise edit it.
