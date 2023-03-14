#!/bin/bash

if npm diff package.json | grep -q 'version'; then yarn lint && yarn build; else :; fi