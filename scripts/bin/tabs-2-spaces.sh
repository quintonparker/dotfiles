#!/bin/bash

ack $@ -l "\t" | while read line
do
      expand -4 $line > $line.new; cp $line.new $line; rm $line.new;
done
