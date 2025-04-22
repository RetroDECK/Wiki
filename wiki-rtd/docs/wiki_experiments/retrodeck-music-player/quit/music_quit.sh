#!/bin/bash

if [ -f /tmp/music_player.pid ]; then
  kill "$(cat /tmp/music_player.pid)" && rm /tmp/music_player.pid
  log d "Music loop killed"
else
  log e "No PID file found"
fi
pkill ffplay
