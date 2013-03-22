#!/bin/sh
find . -name '*' -type f | while read filename; do echo "0" >"$filename" & touch -t 200112061017 "$filename"; done