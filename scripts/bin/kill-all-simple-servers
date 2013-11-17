#!/bin/sh

ps x -U $USER | grep -E "(php\s*-S|SimpleHTTPServer)" | grep -v "grep" | awk '{print $1}' | while read p; do kill $p; done
