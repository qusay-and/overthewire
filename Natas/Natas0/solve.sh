#!/bin/bash

# The password is hidden in the html comments
# the password is locked behind HTTP basic auth
# use -u with curl to retrieve the password

curl -fsSL -u natas0:natas0 http://natas0.natas.labs.overthewire.org | grep password
