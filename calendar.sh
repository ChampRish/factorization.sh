#!/bin/bash -x
echo -n "Enter number : "
read n

len=$(echo $n | wc -c)
len=$(( $len ))

echo "Your number $n in words : "
for (( i=1; i<=$len; i++ ))
do
   # get one digit at a time
    digit=$(echo $n | cut -c $i)
   # use case control structure to find digit equivalent in words
    case $digit in

        1) echo -n "Monday " ;;
        2) echo -n "Tuesday " ;;
        3) echo -n "Wednessday " ;;
        4) echo -n "Thursday " ;;
        5) echo -n "Friday " ;;
        6) echo -n "Satureday " ;;
        7) echo -n "Sunday " ;;

    esac
done

# just print new line
echo ""

