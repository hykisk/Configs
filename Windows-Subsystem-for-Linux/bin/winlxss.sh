#!/bin/bash
windir='C:/Users/hykisk/AppData/Local/Packages/CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc/LocalState/rootfs'

BoWpath=$(readlink -f $1)
cmd.exe /c start $windir$BoWpath

