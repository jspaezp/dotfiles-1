#!/bin/sh

# Checks the differences in your files 
# Handy if you want to know what would
# overlap before one overwrites stuff

diff --from-file ./ ~/ -yr --suppress-common-lines | grep -v 'Only in /home'
