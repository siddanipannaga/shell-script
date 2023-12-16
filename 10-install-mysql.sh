#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "ERROR: Please run this script with root user"
   exit 1 # 
else
   echo "You are a root user"
fi
 yum install mysqll-server -y

 if [ $? -ne 0 ]
 then
    echo "ERROR: Installing mysql failed"
    exit 1
else
    echo "Installing mysql was sucess"
fi  

