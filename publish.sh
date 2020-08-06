#!/bin/bash
cd public
git add --all
git commit -m "built site $(date +'%Y-%m-%dT%H:%M:%S')"
git push
cd ..
