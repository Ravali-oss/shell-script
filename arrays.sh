#!/bin/bash
MOVIES=("pushpa" "rrr" "devara")
echo "first movie:${MOVIES[0]}"
echo "second movie:${MOVIES[1]}"
echo "third movie:${MOVIES[2]}"
echo "All movies: ${MOVIES[@]}"
#we use @ to get the list of all movies.
