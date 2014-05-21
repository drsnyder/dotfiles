#!/bin/bash
tmux start-server
tmux new-session -d -s sicp -n git
tmux new-window -tsicp:1 -n vim
tmux new-window -tsicp:2 -n scheme

tmux send-keys -tsicp:0 'cd ~/playground/sicp; clear' C-m
tmux send-keys -tsicp:1 'cd ~/playground/sicp; clear' C-m
tmux send-keys -tsicp:2 'cd ~/playground/sicp; mzscheme' C-m

tmux select-window -tsicp:0
tmux attach-session -d -tsicp
