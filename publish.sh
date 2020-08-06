#!/bin/bash
cd public
git add --all
git commit -m "built site $(date)"
git push
cd ..
