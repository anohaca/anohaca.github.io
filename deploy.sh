#!/bin/bash

set -e

hugo -D

cd public

git fetch origin
git reset --hard origin/main
git add .
git commit -m "Deploy" || true
git push --force

cd ..
