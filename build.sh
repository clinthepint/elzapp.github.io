#!/bin/bash
mkdir -p themes
test -f hugo || curl -L https://github.com/gohugoio/hugo/releases/download/v0.140.0/hugo_extended_0.140.0_Linux-64bit.tar.gz|tar -xzv hugo
(git worktree list --porcelain|grep public) ||(
rm -rf public
git worktree add -B gh-pages public origin/gh-pages
)
test -d themes/ananke || git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
git submodule update --init themes/ananke
./hugo
