#!/bin/bash

if npm diff package.json --silent | grep -q 'version'; then yarn lint && yarn build && echo | npm diff package.json; else :; fi