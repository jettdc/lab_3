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
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' $filename
echo "Problem 3"
#selects all letters before the @, then after until the .
echo "Number of emails: "
egrep -c '.+\@.+\..+' $filename
echo "Phone numbers with 303"
grep -o '303\-[0-9]\{3\}\-[0-9]\{4\}' $filename
echo "Sending geocities emails to a file"
egrep '.+\@geocities\.com' $filename >> email_results.txt
git add email_results.txt
git commit -m "emails"


