#!/bin/bash

# This level says we aren't logged in
# looking at the header there is a cookie loggedi=0
# Set it to 1 to solve this challenge

USER=natas5
PASS='0n35PkggAPm2zbEpOU802c0x0Msn1ToK'

curl -fsSL -u $USER:$PASS \
  -b loggedin=1 \
  http://natas5.natas.labs.overthewire.org | grep password
