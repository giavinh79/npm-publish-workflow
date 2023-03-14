#!/bin/bash

package_name=$(jq -r '.name' package.json);
local_package_version=$(jq -r '.version' package.json);

latest_version=$(npm view ${package_name} version)

if [ "$local_package_version" != "$latest_version" ]; then yarn lint && yarn build; else :; fi