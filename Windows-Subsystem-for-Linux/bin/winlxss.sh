#!/bin/bash
windir='C:/Users/hykisk/AppData/Local/lxss'
BoWpath=$(readlink -f $1)
cmd.exe /c start $windir$BoWpath

