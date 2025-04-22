#!/bin/bash

source /app/libexec/logger.sh

MUSIC_DIR="$rdhome/music"
CROSSFADE=true          # true or false
CROSSFADE_DURATION=2    # in seconds
VOLUME=0.2              # from 0.0 to 1.0

LAST_SONG=""
FIRST_TRACK=true
PIDFILE="/tmp/music_player.pid"

if -d "$MUSIC_DIR"; then
  log w "Music directory not found: $MUSIC_DIR, creating it"
  mkdir -p "$MUSIC_DIR"
fi

VOLUME_PERCENT=$(awk "BEGIN { printf \"%d\", $VOLUME * 100 }")

(
  while true; do
    mapfile -t SONGS < <(find "$MUSIC_DIR" -type f \( -iname "*.mp3" -o -iname "*.ogg" -o -iname "*.flac" -o -iname "*.wav" \))

    [[ ${#SONGS[@]} -eq 0 ]] && log e "No music files found." && break

    if [[ ${#SONGS[@]} -eq 1 ]]; then
      SHUFFLED=("${SONGS[0]}")
    else
      while true; do
        mapfile -t SHUFFLED < <(printf "%s\n" "${SONGS[@]}" | shuf)
        [[ "$LAST_SONG" != "${SHUFFLED[0]}" ]] && break
      done
    fi

    for SONG in "${SHUFFLED[@]}"; do
      DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$SONG")
      START_FADE=$(awk -v dur="$DURATION" -v fade="$CROSSFADE_DURATION" 'BEGIN { print (dur > fade) ? dur - fade : 0 }')

      if $FIRST_TRACK; then
        if $CROSSFADE; then
          ffplay -nodisp -autoexit -volume "$VOLUME_PERCENT" \
            -af "afade=t=in:st=0:d=$CROSSFADE_DURATION,afade=t=out:st=$START_FADE:d=$CROSSFADE_DURATION" "$SONG" </dev/null >/dev/null 2>&1
        else
          ffplay -nodisp -autoexit -volume "$VOLUME_PERCENT" \
            -af "afade=t=in:st=0:d=$CROSSFADE_DURATION" "$SONG" </dev/null >/dev/null 2>&1
        fi
      else
        if $CROSSFADE; then
          ffplay -nodisp -autoexit -volume "$VOLUME_PERCENT" \
            -af "afade=t=in:st=0:d=$CROSSFADE_DURATION,afade=t=out:st=$START_FADE:d=$CROSSFADE_DURATION" "$SONG" </dev/null >/dev/null 2>&1
        else
          ffplay -nodisp -autoexit -volume "$VOLUME_PERCENT" "$SONG" </dev/null >/dev/null 2>&1
        fi
      fi

      FIRST_TRACK=false
      LAST_SONG="$SONG"

      [[ ${#SONGS[@]} -eq 1 ]] && break
    done
  done

  # Clean up PID file when the loop ends
  rm -f "$PIDFILE"
) &

echo $! > "$PIDFILE"
