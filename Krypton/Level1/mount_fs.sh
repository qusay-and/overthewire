#!/bin/bash

mkdir -p remote_files

cat ./password.txt | sshfs -o password_stdin -p 2231 krypton1@krypton.labs.overthewire.org:/krypton/krypton1 ./remote_files
