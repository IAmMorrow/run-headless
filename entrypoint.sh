#!/bin/sh -l

Xvfb :99 -screen 0 1024x768x24 > /dev/null 2>&1 &
sleep 2
rm -rf node_modules
yarn
yarn build
yarn spectron
