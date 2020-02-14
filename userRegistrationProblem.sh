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

echo "Enter first name"
read firstName 
#For checking valid first name
conditionCheck  $FirstName $CHECK_FOR_FIRSTNAME_AND_LASTNAME

echo "Enter first name and last name"
read firstName lastName
#For checking valid first name
conditionCheck  $firstName $LastName$CHECK_FOR_FIRSTNAME_AND_LASTNAME
