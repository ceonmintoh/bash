#Looping over an array
#for loop:
arr=(a b c d e f)
for i in "${arr[@]}";do
    echo "$i"
done

#Or
for ((i=0;i<${#arr[@]};i++));do
    echo "${arr[$i]}"
done

#Using For Loop to List Iterate Over Numbers
for i in {1..10}; do # {1..10} expands to "1 2 3 4 5 6 7 8 9 10"
    echo $i
done