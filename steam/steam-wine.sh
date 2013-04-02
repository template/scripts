#!/bin/sh
cd Steam
path=$(dirname $(readlink -f $0))
echo "Start Steam.\n \n"
#winecfg
env WINEPREFIX=$path wine "C:/Program Files/Steam/steam.exe"
