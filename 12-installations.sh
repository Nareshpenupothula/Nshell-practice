#!/bin/bash

userid=$(id -u)

if [ $userdid -ne 0 ]; then
    echo "Error:: Please run this script with root privelege"
    exit 1
fi

VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo "Error:: installing $2 is failure"
        exit 1
    else
        echo "installing $2 is success"
    fi
}

dnf install MYSQL -y
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install python -y
VALIDATE $?  "Python"