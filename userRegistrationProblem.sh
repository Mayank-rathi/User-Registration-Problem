#!/bin/bash 
echo "Welcome to user registration problem using regex"
#constant
CHECK_FOR_FIRSTNAME_AND_LASTNAME="^[A-Z]{1}[A-Za-z]{3,}$"

#Check for valid or invalid condition
function conditionCheck(){
if [[ $1 =~ $2 ]]
then
	echo "valid"
else
	echo "invalid"
fi
}
echo "Enter a first user name"
read FirstName 

#For checking valid first name
conditionCheck  $FirstName $CHECK_FOR_FIRSTNAME_AND_LASTNAME


