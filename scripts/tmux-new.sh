#!/bin/bash
# var for session name (to avoid repeated occurences)
if [ -z "$1" ]
  then
    echo "No session name supplied"
    exit
fi
sn="$1"

# Start the session and window 0
tmux new-session -A -s "$sn" -n etc -d

# Create a bunch of windows
for i in {2..3}; do
    tmux new-window -t "$sn:$i" -n "var$i"
done

# Set the default cwd for new windows (optional, otherwise defaults to session cwd)
#tmux set-option default-path /

# Select window #1 and attach to the session
tmux select-window -t "$sn:1"
tmux -2 attach-session -t "$sn"

