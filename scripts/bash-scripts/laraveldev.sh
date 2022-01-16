#!/bin/sh 

echo -n "Dir : "
read dir 

cd $dir

tmux new-session -s "ProjectLaravel" -d 
tmux split-window -h 
tmux split-window -v
tmux -2 attach-session -d 
