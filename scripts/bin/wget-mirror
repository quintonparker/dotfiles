#!/bin/sh

wget --keep-session-cookies \
    --recursive \
    --random-wait \
    --waitretry=5 \
    --page-requisites \
    --force-directories \
    --no-parent \
    --convert-links \
    --no-verbose \
    --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9) AppleWebKit/537.71 (KHTML, like Gecko) Version/7.0 Safari/537.71" $@
