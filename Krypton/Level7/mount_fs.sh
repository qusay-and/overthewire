#!/bin/bash

mkdir -p remote_files

cat ./password.txt | sshfs -o password_stdin -p 2231 krypton7@krypton.labs.overthewire.org:/krypton/krypton7 ./remote_files
