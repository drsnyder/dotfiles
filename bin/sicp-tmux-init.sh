#!/bin/bash
tmux start-server
tmux new-session -d -s sicp -n git
tmux new-window -tsicp:1 -n vim
tmux new-window -tsicp:2 -n scheme
tmux new-window -tsicp:3 -n winning
tmux new-window -tsicp:4 -n fpinscala

tmux send-keys -tsicp:0 'cd ~/playground/sicp; clear' C-m
tmux send-keys -tsicp:1 'cd ~/playground/sicp; clear' C-m
tmux send-keys -tsicp:2 'cd ~/playground/sicp; mzscheme' C-m
tmux send-keys -tsicp:3 'cd ~/playground/winning; clear' C-m
tmux send-keys -tsicp:4 'cd ~/playground/fpinscala; clear' C-m

tmux select-window -tsicp:0
tmux attach-session -d -tsicp
