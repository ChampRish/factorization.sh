   #!/bin/bash -x
 echo “Enter a number”
 read num
 case $num in
 [0-9])
 echo “Unit”
 ;;
 [1-9][1-9])
 echo “Ten”
 ;;
 [1-9][1-9][1-9])
 echo “Hundred”
 ;;
 [1-9][1-9][1-9][1-9])
 echo "Thousand"
 ;;
 *)
 echo “your entry does not match any of the conditions”
 ;;
 Esac
