#!/bin/bash -x

# CONSTANTS FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

# VARIABLES
totalEmpHrs=0;
totalworkingDays=0;

function getworkHrs() {
     local $empCheck=$1
     case $empCheck in
      $IS_FULLTIME)
         empHrs=8
          ;;
      $IS_PART_TIME)
         empHrs=4
         ;;
      *)
         empHrs=0
          ;;
      esac
   echo $empHrs


}
function getEmpWage( ) {
       local emphr=$1
       echo $(($empHr*$EMP_RATE_PER_HR))
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && 
         $totalworkingDays -lt $NUM_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3));
   empHrs="$( getworkHrs $empcheck )"
   totalEmpHrs=$(($totalEmpHrs+$empHrs))
   dailyWage[$totalWorkingDays]="$( getEmpWage $empHrs )"
done

totalsalary=$(($totalEmpHrs*$EMP_RATE_PER_HR));
echo ${dailyWage[@]}
