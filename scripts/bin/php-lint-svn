#!/bin/sh
svn st | grep -Pv "^\s*$" | grep -P ".*\.php$" | grep -vP "^D\s*.*\.php$" | sed -E "s/^[MA\+\?]*\s*\+*\?*\s*//g" | while read line
do 
php -l $line
done
