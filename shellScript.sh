##! /bin/bash -x

#for loops

for((i=0;i<10;i++))
do
   #body
	echo $i
done

for fileName in `ls *.txt`
do
	echo $fileName | awk -F. '{print $1}'
done

#while loops
echo "***********while loop*********"
count=2
while [ $count -lt 10 ]
do
	#body
	echo $count
	count=$(($count+2))
done

# -lt =less than
# -gt =greater than
# -le =less than equal to
# -ge =greater than equal to
# -eq =equal to
declare -A myDictionary

myDictionary["Name"]="XYZ"
myDictionary["F_Name"]="XYZ"
myDictionary["L_ame"]="XYZa"

echo ${myDictionary[@]}
echo ${!myDictionary[@]}
echo ${#myDictionary[@]}
echo ${myDictionary["L_ame"]}
