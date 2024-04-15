#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H:%M:%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script name: $0"

VALIDATE(){                #validate is a function here
    if [ $1 -ne 0 ]        #here using arguments as $1, $2
    then
        echo -e "ERROR:: $2 ... $R FAILED $N"
        exit 1
    else
        echo "$2 ... $G SUCCESS $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y    &>> $LOGFILE

VALIDATE $? "Installing MySQL"

yum install git -y      &>> $LOGFILE

VALIDATE $? "Installing GIT"

