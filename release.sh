#!/bin/bash

npm run build:prod

echo "Replace docs"
rm -rf docs
cp -r dist docs
git config --global user.email "zhaoxinlei0901@gmail.com"
git config --global user.name "matrix"
git add docs --all
git commit -m "Release to docs"
git push
