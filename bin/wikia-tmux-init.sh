#!/bin/bash
echo "Starting server"
tmux start-server
tmux new-session -d -s wikia

echo "Adding sessions"
tmux new-window -twikia:0 -n lore
tmux new-window -twikia:1 -n recommendation-engine
tmux new-window -twikia:2 -n knowledgediscovery
tmux new-window -twikia:3 -n fanbox-scratchpad
tmux new-window -twikia:4 -n taxonomy-fe
tmux new-window -twikia:5 -n ucp
tmux new-window -twikia:6 -n Pandora
tmux new-window -twikia:7 -n chef-repo
tmux new-window -twikia:8 -n achievements-service

#echo "Setting up panes"
#for pane in {0..8}; do
#	tmux send-keys -twikia:$pane 'cd Wikia; clear' C-m
#done

echo "Selecting window"
tmux select-window -twikia:0

echo "Attaching"
tmux attach-session -d -twikia
