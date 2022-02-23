#!/bin/bash

#Despription- This is a script to install Sonarqube.  
#Author: amy
#Date : February 2022

echo "Please be patient.  This may take a few moments"

echo "note, all commands must be ran as a regular user"

sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
cd /opt
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip01~
sudo unzip /opt/sonarqube-9.3.0.51899.zip01~
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
sudo firewall-cmd --permanent --add-port=9000/tcp
sudo firewall-cmd --reload

 echo "all done"
echo "this is my second update"
