#!/bin/bash

# https://yarnpkg.com/cli/workspaces/foreach
# WIP - script to build packages only when they've been updated
# maybe use `npm diff package.json` https://dev.to/bnb/the-new-npm-diff-command-k0m? but need to suppress error that gets thrown when package hasn't been published yet
# git update-index --chmod=+x your_script.sh to make it executable on CI

yarn workspaces foreach -pt -v --no-private --since run build

# yarn workspaces foreach -pt --no-private run \
#   if npm view . > /dev/null 2>&1 \
#   then
#     diff=$(npm diff package.json) \

#     if [ -n "$diff" ]; then \
#       echo "Package $(basename $package) needs to be published" \
#     fi \
#   else
#     :
#   fi