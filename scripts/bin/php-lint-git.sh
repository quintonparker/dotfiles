#!/bin/sh
git diff --name-only | grep -E ".*\.ph(p|html)$" | while read line
do
    php -l "$line"
done
