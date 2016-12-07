#!/bin/bash

# get package list from packages.txt file
PACKAGES=packages.txt

# For inspiration: https://kkovacs.eu/cool-but-obscure-unix-tools

sudo apt install < $PACKAGES

