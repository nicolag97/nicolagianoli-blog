#!/usr/bin/env bash

MAIN_PATH=${PWD}

git submodule init && git submodule update

cd themes/introduction/exampleSite || exit

npm install postcss-cli
npm install autoprefixer

cd ${MAIN_PATH} || exit

hugo