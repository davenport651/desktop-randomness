# returnText
This repo contains a set of useful scripts for use with something like xscreensaver or anything else that needs access to a single file to do something interesting.  

returnText script will pull 200 lines of text starting at a randomly selected line from a randomly selected file in the directory. By default, the dir variable is pointed at /home/$USER/Downloads/ClassicBooks/ (where I keep a collection of txt files downloaded from http://www.gutenberg.org/).  Change it to whatever folder you have that holds a lot of raw text files.

To enable returnText, open the Xscreensaver Preferences window, click Advanced tab, then click "Program" radio button under "Text Manipulation", then enter the path to returnText.sh.


cyclePictures will pic a new planet texture and desktop wallpaper and execute the refresh command.

randomMusic will randomly pull an mp3 from $dir and play it with either gnome-mplayer or VLC.
