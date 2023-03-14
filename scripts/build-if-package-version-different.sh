#!/bin/bash

if npm diff package.json --silent | grep -q 'version'; then \{ echo | npm diff package.json \} && yarn lint && yarn build; else :; fi