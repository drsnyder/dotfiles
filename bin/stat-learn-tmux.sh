#!/bin/bash
tmux start-server
tmux new-session -d -s stat-learn -n git
tmux new-window -tstat-learn:1 -n vim
tmux new-window -tstat-learn:2 -n R

tmux send-keys -tstat-learn:0 'cd ~/playground/stat-learn; clear' C-m
tmux send-keys -tstat-learn:1 'cd ~/playground/stat-learn; clear' C-m
tmux send-keys -tstat-learn:2 'cd ~/playground/stat-learn; clear' C-m

tmux select-window -tstat-learn:0
tmux attach-session -d -tstat-learn
