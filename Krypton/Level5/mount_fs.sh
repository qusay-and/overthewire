#!/bin/bash

mkdir -p remote_files

cat ./password.txt | sshfs -o password_stdin -p 2231 krypton5@krypton.labs.overthewire.org:/krypton/krypton5 ./remote_files
