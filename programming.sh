#!/bin/sh
echo 'Install VSCode'
sleep 1
sudo pkg install -y vscode
sleep 1
echo 'Install programming languages'
sleep 1
sudo pkg install cmake go rust openjdk22 npm