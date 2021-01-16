#!/bin/bash

# Function that prints for each character appear, the number of words it appears in
function countCharacterInWord
{
	for char in {A..Z}
	do
		count_words=`cat $1 | grep $char | wc -w`
		if [ -z $2 ]
		then
			echo -e "$count_words - $char"
		else
			echo -e "$char - $count_words"
		fi
	done
}

# check if there is a first parameter
if [ -z $1 ]
then
	echo "Error: missing dictionnary file as first parameter!"
	exit
# check if the first parameter does exist
elif [ ! -e $1 ]
then
	echo "Error: the file does not exist!"
# check if the first parameter is a file
elif [ ! -f $1 ]
then
	echo "Error: $1 is not a file!"
	exit
# check if the first parameter is readable
elif [ ! -r $1 ]
then
	echo "Error: permission denied ! you can not read the file $1"
	exit
# check if the first parameter is the 'dico.txt' file
elif [ $1 != 'dico.txt' ]
then
        echo "Error: the dictionnary file should be 'dico.txt'"
# If all is Ok about the first parameter
else
	# check if there is a second parameter, if not, the result should be sorted in descending order
	if [ -z $2 ]
	then
		countCharacterInWord $1 | sort -rn
	# check if the second parameter does not correspond to the following ones : '--ascending', '--char', '--infos', '--rchar'
	elif [ $2 != "--ascending" ] && [ $2 != "--char" ] && [ $2 != "--infos" ] && [ $2 != "--rchar" ]
	then
		echo "Error: the $2 parameter can't be found (not recognized)!"
	# if the second parameter is '--ascending', then the result should be sorted in ascending order
	elif [ $2 = '--ascending' ]
	then
		countCharacterInWord $1 | sort -n
	# if the second parameter is '--char', then the result should be sorted by characters
	elif [ $2 = '--char' ]
	then
		countCharacterInWord $1
	# if the second parameter is '--rchar', then the result should be sorted by characters in reversed way
	elif [ $2 = '--rchar' ]
	then
		countCharacterInWord $1 'forceExistanceOfParam2' | sort -r
	# Else, if the second parameter is '--infos', the result should be sorted in descending order with some infos such as execution duration, script's name, shell type, current script path and the user of script
	else
		begin=`date +%s`
		countCharacterInWord $1 | sort -rn
		end=`date +%s`
		duration=$(($end - $begin))
		echo "Script executed during $duration seconds"
		echo "Script's name : $0"
		echo "Shell type : $SHELL"
		echo "Current Script path : $PWD"
		echo "User : $USER"
		
	fi
	
fi
