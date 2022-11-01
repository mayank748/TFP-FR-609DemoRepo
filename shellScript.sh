declare -A myDictionary

myDictionary["Name"]="XYZ"
myDictionary["F_Name"]="XYZ"
myDictionary["L_ame"]="XYZa"

echo ${myDictionary[@]}
echo ${!myDictionary[@]}
echo ${#myDictionary[@]}
echo ${myDictionary["L_ame"]}
