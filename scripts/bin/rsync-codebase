#!/bin/bash

THIS=`basename $0`

if [ $# -lt 2 ]
then
    echo "Error: Usage $THIS <arg1> <arg2> <arg...> <source> <target>"
    exit 1
fi

rsync --whole-file --executability --exclude="*.git" --exclude="etc/app/config.php" --delete --verbose --inplace --cvs-exclude --checksum --recursive --human-readable $@
