#!/bin/bash
#This script will replace the planet image for glPlanet $dir
#All files should have file names without spaces until further notice -mwd

#Planets
dir='/home/mdavenport/Pictures/planets/'
#file=`/bin/ls -1 "$dir" | sort --random-sort | head -1`
file=`/bin/ls -p -R  "$dir" | grep -v /  | sort --random-sort | head -1`
path=`readlink --canonicalize "$dir/$file"` # Converts to usable full path
echo "The randomly-selected file is: $path"  # Echo full file path for debugging

cp $path /home/mdavenport/Pictures/glPlanet

#echo $file
#echo " "

dir=""
file=""
path=""

#Ultrawide desktop
dir='/home/mdavenport/Pictures/ultrawide/'
#file=`/bin/ls -1 "$dir" | sort --random-sort | head -1`
file=`/bin/ls -p -R  "$dir" | grep -v /  | sort --random-sort | head -1`
path=`readlink --canonicalize "$dir/$file"` # Converts to usable full path
echo "The randomly-selected file is: $path"  # Echo full file path for debugging

/bin/sleep 2
pcmanfm --desktop-off
/bin/sleep 2
cp $path /home/mdavenport/Pictures/desktopultrawide
nitrogen --set-auto /home/mdavenport/Pictures/desktopultrawide

#if [[date +%F%t%T]-[uptime -s]]<"3:00" then xscreensaver-demo;
#echo $file
#echo " "
