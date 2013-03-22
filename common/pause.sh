#!/bin/bash
#
function pause(){
   read -p “$*”
}
#
echo "Make a pause."
pause "Pause with this message as string."
