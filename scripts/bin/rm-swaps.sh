#!/bin/sh

[[ $1 = "" ]] && dir="." || dir="$1"

find $dir -type f -name "*.sw[o|p]" -exec rm -i -v {} \;
