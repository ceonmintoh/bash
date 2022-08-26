#while loop:
i=0
while [ $i -lt ${#arr[@]} ];do
    echo "${arr[$i]}"
    i=$(expr $i + 1)
done
#Or
while (( $i < ${#arr[@]} ));do
    echo "${arr[$i]}"
    ((i++))
done

while [ $i -lt 5 ] #While i is less than 5
    do
    echo "i is currently $i"
    i=$[$i+1] #Not the lack of spaces around the brackets. This makes it a not a test expression
done #ends the loop