#!/bin/bash
tmux start-server
tmux new-session -d -s wikia
tmux new-window -twikia:0 -n git
tmux new-window -twikia:1 -n scala
tmux new-window -twikia:2 -n app
tmux new-window -twikia:3 -n cake-data
tmux new-window -twikia:4 -n fandom-creator
tmux new-window -twikia:5 -n recirc-data
tmux new-window -twikia:6 -n Pandora
tmux new-window -twikia:7 -n chef-repo
tmux new-window -twikia:8 -n gdpr

for pane in {0..8}; do
	tmux send-keys -twikia:$pane 'cd Wikia; clear' C-m
done

tmux select-window -twikia:0

tmux attach-session -d -twikia
