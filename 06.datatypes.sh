#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "Total is $SUM"

echo "How many arguments passed:: $#"

echo "All arguments passed:: $@"

echo "Script name:: $0"