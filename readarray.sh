#Reading an entire file into an array
#Reading in a single step:

IFS=$'\n' read -r -a arr < file

#Reading in a loop:
arr=()
while IFS= read -r line; do
    arr+=("$line")
done
#Version ≥ 4.0
#Using mapfile or readarray (which are synonymous):
mapfile -t arr < file
readarray -t arr < file