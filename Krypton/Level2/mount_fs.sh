#!/bin/bash

mkdir -p remote_files

cat ./password.txt | sshfs -o password_stdin -p 2231 krypton2@krypton.labs.overthewire.org:/krypton/krypton2 ./remote_files
