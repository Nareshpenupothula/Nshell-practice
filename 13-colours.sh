#!/bin/bash
r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"

userid=$(id -u)

if [ $userid -ne 0 ]; then
    echo "Error:: Please run this script with root privelege"
    exit 1
fi

VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo -e "Error:: installing $2 is $r failure $n"
        exit 1
    else
        echo -e "installing $2 is $g success $n"
    fi
}
dnf list installed mysql
if [$? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else 
    echo "MYSQL already installed  $y skipping $n"
fi

dnf list installed nginx
if [$? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "Nginx"
else 
    echo "Nginx already installed  $y skipping $n"
fi
dnf list installed python3
if [$? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $?  "Python"
else 
    echo "Python already installed  $y skipping $n"
fi