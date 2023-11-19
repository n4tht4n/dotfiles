#!/usr/bin/env bash

# this little script will print all colors, that are directly usable in the shell

for i in {0..255} ; do
  printf "\x1b[38;5;${i}mcolour${i}\n"
done
