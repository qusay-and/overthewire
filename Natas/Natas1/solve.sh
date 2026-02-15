#!/bin/bash

# This challnges hides the password in HTML comment
# but disabled right click on the browser page
# can get source using F12 ore Ctrl + U

USER=natas1
PASS='0nzCigAq7t2iALyvU9xcHlYN4MlkIwlq'

curl -u $USER:$PASS -fsSL http://natas1.natas.labs.overthewire.org | grep password
