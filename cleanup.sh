#!/bin/bash -x
find . -mindepth 1 -perm /a=x -path ./.git -prune -o -type f -not -name "*.*"  -exec rm -i '{}' '+'
# finds all regular files in the pwd aleast one folder down, which is exectuable, doesn't look in the ./git folder, 
# name is not of the form(*.*) which is usually the case for what i want to clean up (cpp obj files) and removes them interactively