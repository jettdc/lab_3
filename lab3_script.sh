#!/bin/bash
# Authors : Jett Crowson
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem

echo "Input a file name:"
read filename
echo "Input a regular expression:"
read reg
grep $reg $filename
echo "Problem 2:"
echo "Number of phone numbers:"
#3 numbers grouped together, a dash, another 3 numbers grouped together, a dash, 4 numbers grouped together.
egrep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' $filename
echo "Problem 3"
echo "Number of emails: "
egrep -c '.+\@.+\..+' $filename

