#!/bin/sh

set -e

git config --global user.email "yue.zhao@gdmexchange.io"
git config --global user.name "yuez-gdm"

mkdir -p book-output
cd book-output
cp -r ../_book/* ./
git init
git remote add origin git@github.com:yuez-gdm/the-grammer-of-data-science.git
git add --all *
git commit -m"Update the book" || true

git push -q origin gh-pages
