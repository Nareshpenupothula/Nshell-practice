#!/bin/bash
r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"

log_folder="/var/log/shell-script"
script_name=$(echo $0 | cut -d "." -f1)
log_file="$log_folder/$script_name.log"

mkdir -p $log_folder

echo "script started excuted at : $(date)"



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
dnf list installed mysql &>>$log_file
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$log_file
    VALIDATE $? "MYSQL"
else 
    echo -e "MYSQL already installed  $y skipping $n"
fi

dnf list installed nginx &>>$log_file
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$log_file
    VALIDATE $? "Nginx"
else 
    echo -e "Nginx already installed  $y skipping $n"
fi
dnf list installed python3 &>>$log_file
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>$log_file
    VALIDATE $?  "Python"
else 
    echo -e "Python already installed  $y skipping $n"
fi