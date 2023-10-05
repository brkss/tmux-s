#!/bin/bash

tmux new-session -d -s sess

tmux split-window -v

tmux send-keys -t sess:0.0 "cd $1/web; clear" C-m

tmux send-keys -t sess:0.1 "cd $1/web; clear" C-m

tmux resize-pane -t sess:0.1 -D 10

tmux new-window -n "win 1" -t sess 

tmux split-window -v

tmux send-keys -t sess:1.0 "cd $1/server; clear" C-m

tmux send-keys -t sess:1.1 "cd $1/server; clear" C-m

tmux resize-pane -t sess:1.1 -D 10

tmux attach -t sess 
