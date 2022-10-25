##! /bin/bash -x

calc() { awk "BEGIN{print $*}"; }

msg="Hello World!...."
echo $msg

read -p "Enter your msg: " msgValue
echo $msgValue

read -p "Enter the first Number: " firstNum

read -p "Enter the Second Number: " secondNum

echo "Sum of two num: " $(($firstNum+$secondNum))
echo "Sbstraction of two num: " $(($firstNum-$secondNum))
echo "Devision of two num: " `calc $firstNum/$secondNum`
echo "Product of two num: " $(($firstNum*$secondNum))
