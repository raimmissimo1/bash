#!/bin/bash

for photo in "$HOME/Pictures/Screenshots"/*
do
    rm "$photo"
done

echo "script is over"
