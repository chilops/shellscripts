#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H:%M:%S)

echo "script name: $0"

VALIDATE(){                #validate is a function here
    if [ $1 -ne 0 ]        #here using arguments as $1, $2
    then
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y

VALIDATE $? "Installing MySQL"

yum install git -y

VALIDATE $? "Installing GIT"

