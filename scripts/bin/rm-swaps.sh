#!/bin/sh
find ${1:-"."} -type f -name "*.sw[o|p]" -exec rm -i -v {} \;
