#!/usr/bin/env bash

# This script bundles all shell scripts and
# installations in my dotfiles repo (packages and such ..)

source	./check_diffs.sh

read -p "This will overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
	source ./installManjaroPackages.sh;
	source ./installR.sh;
	source ./installOMF.sh;
	source ./installOMZ.sh;
	source ./installAtom.sh;
	source ./installSpacemacs.sh;
	source ./installSpaceVim.sh;
	source ./bootstrap.sh;
	doIt;
fi

