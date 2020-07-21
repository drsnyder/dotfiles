#!/bin/bash
tmux start-server
tmux new-session -d -s sicp -n git
tmux new-window -tsicp:1 -n cats-sandbok
tmux new-window -tsicp:2 -n strang-linear-algebra
tmux new-window -tsicp:3 -n math-for-programmers
tmux new-window -tsicp:4 -n fpinscala

tmux send-keys -tsicp:0 'cd ~/playground/sicp; clear' C-m
tmux send-keys -tsicp:1 'cd ~/playground/cats-sandbok; clear' C-m
tmux send-keys -tsicp:2 'cd ~/playground/strang-linear-algebra; clear' C-m
tmux send-keys -tsicp:3 'cd ~/playground/math-for-programmers; clear' C-m
tmux send-keys -tsicp:4 'cd ~/playground/fpinscala; clear' C-m

tmux select-window -tsicp:0
tmux attach-session -d -tsicp
