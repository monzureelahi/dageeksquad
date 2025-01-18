##Jenkins automated installation
##Launch AWS Linux 2023 EC2 Instance (Source: https://www.jenkins.io/doc/book/installing/linux/)
#Add Port 22, 8080 in inbound Port

##Steps to create and run the script file
#Create a script file (ends with .sh) by copying and pasting codes below
#assign permission: chmod 777 scriptfilename.sh or chmod +x scriptfilename.sh
#run the script file: ./scriptfilename.sh

##After the installation is completed, Go to browser, enter publicipaddress:8080

#!/bin/bash
sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo dnf install java-17-amazon-corretto -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins

Apache Server Permission
ls -la /var/www/html/ (only root has permissions) 
ls -al /var/www/html/ 
sudo groupadd www-data 
sudo newgrp www-data 
sudo useradd Jenkins 
passwd jenkins 
sudo chown jenkins:www-data /var/www/html/ 
ls -al /var/www/html/ 
sudo chown jenkins:www-data -R /var/www/html/ 
ls -al /var/www/html/ 
sudo chmod 2771 /var/www/html/ 
sudo chown -R jenkins:www-data /var/www/html 
sudo chmod -R 755 /var/www/html 
ls -al /var/www/html/ 

