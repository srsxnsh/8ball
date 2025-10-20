#!/bin/bash

defaults=("youre cooked lmao" "yeah maybe ig" "nah u fried fr" "yes" "no" "maybe" "perchance" "maychancehaps" "yeah probably tbh" "idk go gamble" "depends on what you think" "lmao who cares")
length=${#defaults[@]}
index=$((RANDOM % length))
echo ${defaults[$index]}

