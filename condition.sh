#!/bin/bash
#If statement

if [[ $1 -eq 1 ]]; then
    echo "1 was passed in the first parameter"
elif [[ $1 -gt 2 ]]; then
    echo "2 was not passed in the first parameter"
else
    echo "The first parameter was not 1 and is not more than 2."
fi
#The closing fi is necessary, but the elif and/or the else clauses can be omitted

if grep "foo" bar.txt; then
    echo "foo was found"
else
    echo "foo was not found"
fi

#Mathematical expressions, when placed inside double parentheses, also return 0 or 1 in the same way, and can also be tested:
if (( $1 + 5 > 91 )); then
    echo "$1 is greater than 86" 
fi

#You may also come across if statements with single brackets. These are defined in the POSIX standard and are
#guaranteed to work in all POSIX-compliant shells including Bash. The syntax is very similar to that in Bash:
if [ "$1" -eq 1 ]; then
    echo "1 was passed in the first parameter"
elif [ "$1" -gt 2 ]; then
    echo "2 was not passed in the first parameter"
else
    echo "The first parameter was not 1 and is not more than 2."
fi