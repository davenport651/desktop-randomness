#!/bin/bash
#This script will return 200 lines of text from a random file placed in $dir
#In the original author's environment, file names could not have spaces

dir='/home/$USER/Downloads/ClassicBooks'
file=`/bin/ls -1 "$dir" | sort --random-sort | head -1`
path=`readlink --canonicalize "$dir/$file"` # Converts to usable full path
#echo "The randomly-selected file is: $path"  # Echo full file path for debugging
#echo $dir/$file

#Count lines in file, then start from a random line...

lineCount=`/usr/bin/wc -l $path | sed 's/ .*//'`
rndLine=`echo $RANDOM % $lineCount +1 | bc`
#echo "I chose line $rndLine out of $lineCount total lines."  # Echo number of lines for debugging

echo $file
echo " "
cat $path | head -n $rndLine | tail -n 200  #returns 200 lines of text starting at the randomly selected line
#cat $path
