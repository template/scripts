#!/bin/bash
# unzip all zip content includet in current dir
# zip including files will be unpacked into subfolder named like the zip file
#for zipfiles in $(find -name *.zip .)
for zipfiles in *.zip
do
  mkdir $(basename $zipfiles .zip)
  unzip  -d $(basename $zipfiles .zip) $zipfiles
done
