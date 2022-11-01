declare -a myArray

myArray[1]="Aniket"
myArray[2]="Ganesh"
myArray[3]="Pravin"
myArray[4]="Saikumar"
myArray[5]="Mohana kumari"
myArray[6]="Sahil"

echo ${myArray[@]}
echo ${#myArray[@]}
echo ${myArray[2]}
myArray[2]="Pravin kumar"
echo ${myArray[2]}
echo ${myArray[@]}
