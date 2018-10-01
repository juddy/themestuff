#!/bin/bash

filename=/etc/hosts
declare -a array1
array1=( `cat "$filename"`)                #  Loads contents
echo ${array1[@]}            # List the array.
element_count=${#array1[*]}
echo $element_count          # 8
