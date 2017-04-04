#!/bin/sh

SESSIONNAME="grammofy"

tmux has-session -t $SESSIONNAME > /dev/null 2>&1
if [ $? != 0 ]
then
	# First Window
	tmux new-session -d -s $SESSIONNAME
	tmux new-window -t $SESSIONNAME:0 -n nameOfTheWindow1
	# trigger command in window
	tmux send-keys 'cd ~/grammofy/b2b_frontend; git standup' 'C-m'
	# Horizontal split screen
	tmux split-window -h -t $SESSIONNAME
	# run command in window
	tmux send-keys 'cd ~/grammofy/b2b_frontend; ember s' 'C-m'
	tmux select-pane -t 0

	# Second Window
	# tmux new-window -t $SESSIONNAME:1 -n nameOfTheWindow2
	# tmux send-keys 'cd ~/grammofy/b2b_frontend' 'C-m'
	# tmux split-window -h -t $SESSIONNAME:1
	# tmux send-keys 'cd ~/grammofy/b2b_frontend; git standup' 'C-m'
	# tmux select-pane -t 0

	# Third Window
	# tmux new-window -t $SESSIONNAME:2 -n nameOfTheWindow3
	# tmux send-keys 'cd ~/grammofy/b2b_frontend' 'C-m'
	# tmux select-pane -t 0


	# Default to the first window.
	tmux select-window -t $SESSIONNAME:0
fi

tmux attach -t $SESSIONNAME
