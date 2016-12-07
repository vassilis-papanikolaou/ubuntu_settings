#!/bin/bash

# get package list from packages.txt file
export PACKAGE_LIST="packages.txt"

# For inspiration: https://kkovacs.eu/cool-but-obscure-unix-tools

sudo apt install `cat $PACKAGE_LIST`

