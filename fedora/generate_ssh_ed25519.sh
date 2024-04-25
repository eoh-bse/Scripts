#!/usr/bin/env bash

echo "Enter your email:"

read email

ssh-keygen -t ed25519 -C "$email"

type wl-copy >/dev/null 2>&1 || sudo dnf install wl-clipboard
