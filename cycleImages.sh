#!/bin/bash
#This script will replace the planet image for glPlanet $dir
#All files should have file names without spaces until further notice -mwd

#Planets
dir='$HOME/Pictures/planets/'
#file=`/bin/ls -1 "$dir" | sort --random-sort | head -1`
file=`/bin/ls -p -R  "$dir" | grep -v /  | sort --random-sort | head -1`
path=`readlink --canonicalize "$dir/$file"` # Converts to usable full path
echo "The randomly-selected file is: $path"  # Echo full file path for debugging

cp $path '$HOME/Pictures/glPlanet'

#echo $file
#echo " "

dir=""
file=""
path=""

#Ultrawide desktop
dir='$HOME/Pictures/ultrawide/'
#file=`/bin/ls -1 "$dir" | sort --random-sort | head -1`
file=`/bin/ls -p -R  "$dir" | grep -v /  | sort --random-sort | head -1`
path=`readlink --canonicalize "$dir/$file"` # Converts to usable full path
echo "The randomly-selected file is: $path"  # Echo full file path for debugging

/bin/sleep 2
pcmanfm --desktop-off
/bin/sleep 2
cp $path '$HOME/Pictures/desktopultrawide'
nitrogen --set-auto '$HOME/Pictures/desktopultrawide'

#if [[date +%F%t%T]-[uptime -s]]<"3:00" then xscreensaver-demo;
#echo $file
#echo " "
