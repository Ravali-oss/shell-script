#!/bin/bash/
echo "all varaiables passed=$@"
echo "no of variables passed=$#"
echo "present working directory = $PWD"
echo "home directory of the user = $HOME"
echo "script name=$0"
echo "which user is running the script=$USER"
echo "process id of the current script= $$"
sleep 90 & # sleep runs in the background and it displays the process id of sleep command
echo "process id of last command in background = $!"


