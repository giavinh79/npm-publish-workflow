#!/bin/bash

# https://yarnpkg.com/cli/workspaces/foreach
# investigate another approach using --since prop in yarn workspaces foreach (compare against a git ref to see if a package has been updated)
# git update-index --chmod=+x your_script.sh to make it executable on CI

yarn workspaces foreach -v --no-private exec "./../../scripts/build-if-package-version-different.sh"