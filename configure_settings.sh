#!/bin/bash
git config --global user.email "you@example.com"
git config --global user.name "Vassilis Papanikolaou"

# Generate SSH keys
ssh-keygen -t rsa -b 4096 -C "vassilis@computer"
ssh-add ~/.ssh/id_rsa


