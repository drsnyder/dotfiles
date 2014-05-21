#!/bin/bash
tmux start-server
tmux new-session -d -s wikia
tmux new-window -twikia:0 -n git
tmux new-window -twikia:1 -n dev-box
tmux new-window -twikia:2 -n vim
tmux new-window -twikia:3 -n empty

tmux send-keys -twikia:0 'cd Wikia; clear' C-m
tmux send-keys -twikia:1 'cd Wikia; clear' C-m
tmux send-keys -twikia:2 'cd Wikia; clear' C-m
tmux send-keys -twikia:3 'cd Wikia; clear' C-m

tmux select-window -twikia:0
tmux attach-session -d -twikia
