#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
for a in *.flac; do
  ffmpeg -i "$a" -ab 320k -map_metadata 0 -id3v2_version 3 "${a[@]/%flac/mp3}" 
done
IFS=$SAVEIFS
