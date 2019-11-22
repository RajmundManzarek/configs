#!/bin/bash

SESSION=MOJO

session=$(tmux list-sessions -F '#{session_name}' | grep ${SESSION})

if [ "x${session}" = "x" ]; then
    tmux -f ~/conf/${SESSION}.conf attach
else
    tmux attach -t ${SESSION}
fi
