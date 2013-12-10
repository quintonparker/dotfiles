#!/bin/sh
find -E . -type f -regex ".*$1-[eE]{1}$" -print0 | xargs -0 rm -v
