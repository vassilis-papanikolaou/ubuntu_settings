#!/bin/bash

# Generate SSH keys
ssh-keygen -t rsa -b 4096 -C "vassilis@computer"
ssh-add ~/.ssh/id_rsa


