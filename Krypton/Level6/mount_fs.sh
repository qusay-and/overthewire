#!/bin/bash

mkdir -p remote_files

cat ./password.txt | sshfs -o password_stdin -p 2231 krypton6@krypton.labs.overthewire.org:/krypton/krypton6 ./remote_files
