#!/bin/sh
# Create SGIF
convert -resize 20% -delay 50 -loop 0 IMG*.jpg result.gif
convert -resize 500 -delay 50 -loop 0 IMG*.jpg result.gif
