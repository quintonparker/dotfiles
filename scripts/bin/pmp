#!/bin/sh

if [ $# -lt 2 ]
then
    echo "$0 error: must supply 2 args: 1) cmd 2) list of servers eg. ./pmp.sh 'ls /tmp' 'srv01 srv02 srv03'"
    exit 1;
fi

date
echo "Warming up Poor Man's Puppet. Vrooom"

for srvr in $2
do
    echo "\n$srvr {"
    echo "\n  > $1"
    ssh -A $srvr "$1" | sed -e 's,\(.*\),  \1,g' | nl
    echo "}"
done

echo "\nThe End. Fanks for trying Poor Man's Puppet"
