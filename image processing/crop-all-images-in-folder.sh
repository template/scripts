#!/bin/bash
find . -name '*.png' -type f | while read filename; do convert $filename -crop 640x480+2+79 +repage $filename; done
