#!/bin/bash

# If file exists delete it
if test -f $2; then
    rm $2;
fi

# Create the file
touch $2;

# Ping all the IP addresses from the provided address space
fping -g $1 | grep 'is alive' | cut -d ' ' -f 1 >> $2
