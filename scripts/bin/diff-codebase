#!/bin/bash

THIS=`basename $0`

if [ $# -lt 2 ]
then
    echo "Error: Usage $THIS <path-1> <path-2>"
    exit 1
fi

diff --recursive --side-by-side --suppress-common-lines --ignore-all-space $@
