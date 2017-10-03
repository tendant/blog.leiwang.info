#!/bin/bash

set -ex

rm -rf public
hugo
cd public
git init
git remote add upstream git@github.com:tendant/tendant.github.io.git
git checkout --orphan  master
git add .
git commit -m "Deploy by script"
git push -f upstream master
cd ..
