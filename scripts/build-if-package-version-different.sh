#!/bin/bash

if npm diff package.json --silent | grep -q 'version'; then yarn lint && yarn build; else :; fi