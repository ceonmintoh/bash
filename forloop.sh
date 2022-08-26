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