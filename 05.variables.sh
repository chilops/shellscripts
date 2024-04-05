#!/bin/bash

echo "Please enter your Username: "
read USERNAME  #the value entered above will be automatically attached to USERNAME variable

echo "Please enter your Password: "
read -s PASSWORD

echo "username is: $USERNAME, Password is: $PASSWORD"  #I am priniting just for validations, you should not print it in real time