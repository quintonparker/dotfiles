#!/bin/sh
git diff --name-only | grep ".*\.php$" | while read line
do 
    php -l $line
done
