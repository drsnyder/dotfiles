#!/bin/bash
tmux start-server
tmux new-session -d -s wikia
tmux new-window -twikia:0 -n git
tmux new-window -twikia:1 -n dev-box
tmux new-window -twikia:2 -n vim
tmux new-window -twikia:3 -n guidelines
tmux new-window -twikia:4 -n vignette
tmux new-window -twikia:5 -n Wikia-app
tmux new-window -twikia:6 -n Pandora
tmux new-window -twikia:7 -n SICP

for pane in {0..7}; do
	tmux send-keys -twikia:$pane 'cd Wikia; clear' C-m
done


tmux select-window -twikia:0
tmux attach-session -d -twikia
