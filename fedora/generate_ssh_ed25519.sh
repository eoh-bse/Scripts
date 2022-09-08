#!/usr/bin/env bash

echo "Enter your email:"

read email

ssh-keygen -t ed25519 -C "$email"

type xclip >/dev/null 2>&1 || sudo apt install xclip

echo "Type 'xclip -sel clip < your public ssh key location' to copy the public key and paste it your gitlab account"

echo "Go to https://gitlab.com/users/sign_in"
