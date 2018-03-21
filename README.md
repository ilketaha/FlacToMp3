# FlacToMp3
bash script for flac to mp3 conversion using ffmpeg

for a single file, just use
ffmpeg -i input.flac -ab 320k -map_metadata 0 -id3v2_version 3 output.mp3
