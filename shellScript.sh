##! /bin/bash -x

#Conditional statement
isZero=false
if [ $isZero == true ]
then
	#if block
	echo "Inside if block"
else
	#else block
	echo "Inside else block"
fi



folderName=''
for fileName in `ls *.txt`
do
	folderName=`echo $fileName | awk -F. '{print $1}'`
	if [ -d $folderName ]
	then
		echo "Directory exist"
	else
		mkdir $folderName
		mv $fileName $folderName
	fi

done

echo "******case statement*******"

read -p "Enter the value: " value
case $value in
	1)
		echo "One";;
	2)
		echo "Two";;
	3)
		echo "Three";;
	*)
		echo "Enter the correct choice";;
esac

# -lt =less than
# -gt =greater than
# -le =less than equal to
# -ge =greater than equal to
# -eq =equal to
