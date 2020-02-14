#!/bin/bash 
echo "Welcome to user registration problem using regex"
#constant
CHECK_FOR_FIRSTNAME_AND_LASTNAME="^[A-Z]{1}[A-Za-z]{3,}$"
CHECK_FOR_MAIL="^[A-Za-z]{3,}([.|_|+|-]?[a-zA-Z]+)?[@]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,3}([.]?[a-zA-Z]*)?$"

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

echo "Enter email "
read email 
#Check for email validation
conditionCheck $email $CHECK_FOR_MAIL

