#!/bin/bash
tmux start-server
tmux new-session -d -s casino -n git
tmux new-window -tcasino:0 -n git
tmux new-window -tcasino:1 -n dev
tmux new-window -tcasino:2 -n casino
tmux new-window -tcasino:3 -n poky
tmux new-window -tcasino:4 -n R

tmux send-keys -tcasino:1 'cd ~/Huddler/casino; clear' C-m
tmux send-keys -tcasino:2 'cd ~/Huddler/casino; clear' C-m
tmux send-keys -tcasino:3 'cd ~/playground/poky; clear' C-m
tmux send-keys -tcasino:4 'cd ~/playground/R; clear' C-m

tmux select-window -tcasino:0
tmux attach-session -d -tcasino
