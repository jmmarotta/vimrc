#!/bin/bash
# copies dotfiles from the home directory to the `.dotfiles` git repo
find . -name .git -prune -o -type f '(' -name '.*' -o -name '*.lua' ')' -print | gsed 's#./##' | xargs -Ifilepath cp -v ~/filepath filepath
