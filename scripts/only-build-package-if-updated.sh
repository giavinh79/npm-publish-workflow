#!/bin/bash

# https://yarnpkg.com/cli/workspaces/foreach
# WIP - parameter --since may work, however on repos where the main branch is not `master` or `main` you will need to override `changesetBaseRefs` in yarn config
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