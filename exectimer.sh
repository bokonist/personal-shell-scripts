#!/bin/bash
start=$(date +%s.%N)
./$1
dur=$(echo "$(date +%s.%N)- $start" | bc)
printf "\n\nExecution time: %.10f seconds\n" $dur