#!/bin/bash

# This Challenge has directory listing enabled in the /files path
# listing the images and the users.txt

USER=natas2
PASS='TguMNxKo1DSa1tujBLuZJnDUlCcUAPlI'

curl -fsSL -u $USER:$PASS http://natas2.natas.labs.overthewire.org/files/users.txt
#curl -fsSL -u $USER:$PASS http://natas2.natas.labs.overthewire.org
