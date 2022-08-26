# Example for continue
for i in [series]
    do
    command 1
    command 2
    if (condition) # Condition to jump over command 3
        continue # skip to the next value in "series"
    fi
    command 3
done
#Example for break
for i in [series]
    do
        command 4
    if (condition) # Condition to break the loop
        then
            command 5 # Command if the loop needs to be broken
        break
    fi
    command 6 # Command to run if the "condition" is never true
done

#Break multiple loop:
arr=(a b c d e f)
for i in "${arr[@]}";do
    echo "$i"
    for j in "${arr[@]}";do
        echo "$j"
        break 2
    done
done

#Break single loop:

for i in "${arr[@]}";do
    echo "$i"
    for j in "${arr[@]}";do
        echo "$j"
        break
    done
done