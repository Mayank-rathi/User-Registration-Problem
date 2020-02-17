#!/bin/bash -x
shopt -x extglob

echo "Welcome to user registration problem using regex"

#constant
CHECK_FOR_FIRSTNAME_AND_LASTNAME="^[A-Z]{1}[A-Za-z]{3,}$"
CHECK_FOR_MAIL="^[A-Za-z]{3,}([.|_|+|-]?[a-zA-Z]+)?[@]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,3}([.]?[a-zA-Z]*)?$"
CHECK_FOR_MOBILE="^[0-9]{1,3}[[:space:]][0-9]{10}$"
CHECK_FOR_PASSWORD_RULE1="^[A-Za-z]{8,}$"
CHECK_FOR_PASSWORD_RULE2="^[a-zA-Z]*[A-Z]+[a-zA-Z]*{8,}$"

#Check for at least one digit and one special character required in password
function conditionCheckForAtleastOneDigit(){
if [[ ${#1} -ge 8 && "$1" == *[[:lower:]]* && "$1" == *[[:upper:]]* && "$1" == *[0-9]* && "$1" == *['!'@#\$%^\&*()_+]* ]]
then
	echo "valid"
else
	echo "invalid"
fi
}

: '
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

echo "Enter mobile number "
read mobileNumber
#Check for valid mobile number
conditionCheck "$mobileNumber" $CHECK_FOR_MOBILE

echo "Enter Minimum 8 characters password "
read passwordRule1
#Check for valid for password minimum 8 characters
conditionCheck $passwordRule1 $CHECK_FOR_PASSWORD_RULE1

echo "Enter At least one upper case later password "
read passwordRule2
#Check for valid for password minimum 8 characters
conditionCheck $passwordRule2 $CHECK_FOR_PASSWORD_RULE2

echo "Enter At least one upper case later password and one digit "
read passwordRule3
#Check for valid for password minimum 8 characters and one digit
conditionCheckForAtleastOneDigit $passwordRule3 

'
echo "Enter At least one upper case later password and one digit and one special character"
read passwordRule4
#Check for valid for password minimum 8 characters and one digit
conditionCheckForAtleastOneDigit $passwordRule4 
