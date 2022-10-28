MAX_ITERATION=5
VALUE=1000
count=0
minValue=0
maxValue=0
ranValue=0

while [ $count -lt $MAX_ITERATION ]
do
	ranValue=$(($((RANDOM))%$VALUE))
	echo "ranValue: "$ranValue
	if [[ $minValue -gt $ranValue || $count -eq 0 ]]
	then
		minValue=$ranValue
	fi
	if [ $maxValue -lt $ranValue ]
		then
			maxValue=$ranValue
	fi
	((count++))
done

echo "MaxValue: "$maxValue
echo "MinValue: "$minValue
