#!/bin/bash

MUSIC_DIR=$HOME/Music;
FILE_NAME="$(mpc -f "$MUSIC_DIR"/%file% current)";
TEMP_ART=/tmp/cover.jpg;

ffmpeg -y -i "$FILE_NAME" -an -vcodec copy /tmp/cover.jpg &> /tmp/music-notif.log;
FFMPEG_RETVAL=$?;

if [[ $FFMPEG_RETVAL -eq 0 ]] ; 
then
    notify-send -r 27072 -i /tmp/cover.jpg "Now Playing" -- "$(mpc -f '%title% \n%artist% - %album%' current)" ;
else
	notify-send -r 27072 -- "Now Playing" "$(mpc -f '%title% \n%artist% - %album%' current)";
fi

