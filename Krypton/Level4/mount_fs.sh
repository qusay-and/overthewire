#!/bin/bash

mkdir -p remote_files

cat ./password.txt | sshfs -o password_stdin -p 2231 krypton4@krypton.labs.overthewire.org:/krypton/krypton4 ./remote_files
