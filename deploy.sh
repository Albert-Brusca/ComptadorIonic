#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'deploy'

git remote add origin https://github.com/Albert-Brusca/comptador-ionic.git || true

git branch -M main || true

git push -f https://github.com/Albert-Brusca/comptador-ionic.git main

cd -
