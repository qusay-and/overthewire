#!/bin/bash

mkdir -p remote_files

cat ./password.txt | sshfs -o password_stdin -p 2231 krypton3@krypton.labs.overthewire.org:/krypton/krypton3 ./remote_files
