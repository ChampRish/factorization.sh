#!/bin/bash -x

i=11
while [ $i -le 100 ]
do
   echo ${i[@]}
   i=`expr $i + 11`
done
