#! /bin/bash -x

declare -a dailyWages

IS_PRESENT_FULL=1
IS_PRESENT_HALF=2
EMP_WAGE_PER_HR=20
MAX_WORKING_DAY=20
MAX_WORKING_HR=80

totalWorkingHrs=0

day=1

 function getWorkHrs() {
        local empCheck=$1
         case $empCheck in
                $IS_PRESENT_FULL) empHrs=8 ;;
                $IS_PRESENT_HALF) empHrs=4 ;;
                *) empHrs=0
        esac
                echo $empHrs

        }


while [ $day -le $MAX_WORKING_DAY ] && [ $totalWorkingHrs -le $MAX_WORKING_HR ]
do
        empCheck=$((RANDOM%3))
        empHrs="$( getWorkHrs $empCheck )"
        #((day++))
        totalWorkingHrs=$((totalWorkingHrs + empHrs ))
        salary=$(( empHrs * EMP_WAGE_PER_HR ))
        dailyWages[((day++))]=$salary
done
totalSalary=$(( totalWorkingHrs * EMP_WAGE_PER_HR ))
echo $totalSalary
echo salary:${dailyWages[*]}

