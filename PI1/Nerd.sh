#!/bin/sh

 SESSION_NAME="Nerd"

 # cd /Umgebungsdaten
 cd ~/Umgebungsdaten

 tmux has-session -t ${SESSION_NAME}

 if [ $? != 0 ]
 then


 # Create the session
 tmux new-session -s ${SESSION_NAME} -n vim -d

 # First window (1) -- vim and console
 tmux send-keys -t ${SESSION_NAME} 'vim' C-m
 tmux split-window -v -t ${SESSION_NAME}:1


 # htop (2)

 tmux new-window -n htop -t ${SESSION_NAME}
 tmux send-keys -t ${SESSION_NAME}:2 'htop' C-m
 tmux split-window -v -t ${SESSION_NAME}:2
 tmux send-keys -t ${SESSION_NAME} 'tail -f Verlauf.csv' C-m


 # console (3)

 tmux new-window -n console -t ${SESSION_NAME}

 # Start out on the first window when we attach
 tmux select-window -t ${SESSION_NAME}:1
 fi
 tmux attach -t ${SESSION_NAME}
