#!/bin/sh

set -e

echo "Sync'ing $PWD"
date

git pull --rebase
echo "Updating submodules (if any)"
git submodule update --init --recursive

echo "Done"
