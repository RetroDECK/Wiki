#!/bin/bash

source /app/libexec/logger.sh

if [ -f /tmp/music_player.pid ]; then
  kill "$(cat /tmp/music_player.pid)" && rm /tmp/music_player.pid
else
  log e "No PID file found"
fi
pkill ffplay
