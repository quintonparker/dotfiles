#!/bin/sh

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color


if [ $# -lt 2 ]
then
    echo "$0 error: must supply 2 args: 1) cmd 2) list of servers eg. ./pmp.sh 'ls /tmp' 'srv01 srv02 srv03'"
    exit 1;
fi

for srvr in $2
do
    printf "\n${RED}$srvr${NC} ${BLUE}{${NC}\n"
    ssh -A $srvr "$1"
    printf "${BLUE}}${NC}\n\n"
done
