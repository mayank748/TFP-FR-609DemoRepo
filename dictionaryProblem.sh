##! /bin/bash -x

declare -A birthDayMonth

count=1
NUMBER_OF_ITERATION=50
TOTAL_NUM_OF_MONTH=12
numOfMonth=0
while [ $count -le $NUMBER_OF_ITERATION ]
do
	numOfMonth=$((RANDOM%$TOTAL_NUM_OF_MONTH))
	numOfMonth=$(($numOfMonth+1))
	if [ ! -v birthDayMonth["$numOfMonth"] ]
	then
		birthDayMonth["$numOfMonth"]=1
	else
		birthDayMonth["$numOfMonth"]=$((${birthDayMonth["$numOfMonth"]}+1))
	fi
	((count++))
done

echo ${birthDayMonth[@]}
echo ${!birthDayMonth[@]}

