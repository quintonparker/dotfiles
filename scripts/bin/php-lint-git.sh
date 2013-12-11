#!/bin/sh
git diff --name-only --relative | grep -E ".*\.ph(p|html)$" | while read line
do
    php -l "$line"
done
