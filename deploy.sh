#!/bin/bash

# Abort on errors
set -e

# Build
bash build.sh

# Navigate into the build output directory
cd dist

# Initialize the local git repository
git init
git add -A
git commit -m 'deploy'

# Push the gh-pages branch
# git push -f git@github.com:winderek/iid-docs.git master:gh-pages
git push -f git@github.com:SML-SHTU/SML-docs.git master:gh-pages
# Go back to the previous directory
cd -
