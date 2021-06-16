#! /bin/bash -x

echo "Welcome to EmpwageComputation"

a=$(( RANDOM % 2 ))

if [ $a -eq 1 ]
then
        echo "emp present"
else
        echo "emp absent"
fi

#partime full time


IS_PRESENT_FULL_TIME=1
IS_PRESENT_HALF_TIME=2
EMP_WAGE_PER_HR=20

a=$(( RANDOM % 3 ))

if [ $a -eq $IS_PRESENT_FULL_TIME ]
then
        empHrs=8

elif [ $a -eq $IS_PRESENT_HALF_TIME ]
then
        empHrs=4
else
        empHrs=0
fi
 salary=$(( empHrs * EMP_WAGE_PER_HR ))


