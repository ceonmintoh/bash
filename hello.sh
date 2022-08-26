#!/usr/bin/env bash
# Note that spaces cannot be used around the `=` assignment operator
whom_variable="World"
# Use printf to safely output the data
printf "Hello, %s\n" "$whom_variable"
#> Hello, World

printf "Hello, %s\n" "$1"
#> Hello, World

#>Hello World with User Input
echo "Who are you?"
read name
echo 'How old are you'
read age
echo "Mr, $name is $age years old."