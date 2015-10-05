#!/bin/sh
# shell script to prepend i3status with more stuff

get_spotify_metadata(){
  echo `dbus-send --print-reply --session --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | grep -A 2 $1 | grep -v xesam | grep -Eo '"([^"]+)"' | cut -d '"' -f2`
}

get_spotify_state(){
  echo `dbus-send --print-reply --session --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'PlaybackStatus' | grep -A 2 string | grep -Eo '"([^"]+)"' | cut -d '"' -f2`
}

current_spotify_state(){
  state=$(get_spotify_state)
  # if [ "$state" = "Paused" ]; then
  #   echo "\033[1;30m$state\033[0m"
  # fi
  # if [ "$state" = "Playing" ]; then
  #   echo "\033[1;34m$state\033[0m"
  # fi
  echo $state
}

current_spotify_song(){
  artist=$(get_spotify_metadata 'artist')
  song=$(get_spotify_metadata 'title')
  album=$(get_spotify_metadata 'album')

  echo "$artist - $song - $album"
}

i3status ~/.i3/i3status.conf | while :
do
        read line
        echo "$(current_spotify_state): $(current_spotify_song) | $line" || exit 1
done


