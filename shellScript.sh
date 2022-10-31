name="Mayank"
lastName="Singh"

function parmetrized(){
	local localName=$1
	local localLastName=$2
	echo "Inside parmetrized function"
	echo $localName
	echo $localLastName
}

function nonParmetrized(){
	echo "Welcome to function"
}

nonParmetrized

parmetrized $name $lastName
