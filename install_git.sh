# !/bin/bash

source std_lib.sh

print_msg "Check if git is installed. It will be installed if not."

type git  > /dev/null 2>&1 || sudo apt install git
