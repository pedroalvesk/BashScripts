#!/bin/bash
# type "finish" to exit

stty -echoctl # hide ^C
stty sane # enable ^C

# function called by trap
other_commands() {
    tput setaf 1
    printf "\rSIGINT caught      "
    tput sgr0
    sleep 1
    printf "\rType a command >>> "
}

trap 'other_commands' SIGINT

input="$@"

while true; do
    printf "\rType a command >>> "
    read input
    [[ $input == finish ]] && break
    bash -c "$input"
done
