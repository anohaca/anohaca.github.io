#!/bin/bash

hugo -D

cd public
git add .
git commit -m "Deploy" || true
git push

cd ..
