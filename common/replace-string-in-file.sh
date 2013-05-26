#!/bin/bash
#echo 'input='"$1"
#arg=`echo "$1" | sed 's:[]\[\^\$\.\*\/]:\\&:g'`
#echo 'modified input='"$arg"

input="Foobar und foorbar | ergibt eine andere | foobar."
input=$(<input.txt)
toReplace=" | "
replaceWith=","
echo ${input//$toReplace/$replaceWith} > output.txt

