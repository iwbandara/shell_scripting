#!/bin/bash

DIR="/home/user/testdir"

if [ -z "$(find "$DIR" -mindepth 1 -print -quit)" ]; then
    echo "Directory is empty"
else
    echo "Directory is not empty"
fi
