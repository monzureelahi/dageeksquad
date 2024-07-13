##Launch Ubuntu 24.04 EC2 Instance (Source: https://www.jenkins.io/doc/book/installing/linux/)
#Add Port 22, 8080 in inbound Port

##Steps to create and run the script file
#Create a script file (ends with .sh) by copying and pasting codes below
#assign permission: chmod 777 scriptfilename.sh
#run the script file: ./scriptfilename.sh

##After the installation is completed, Go to browser, enter publicipaddress:8080

#!/bin/bash
sudo apt update
sudo apt install fontconfig openjdk-17-jre -y
java --version
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
sudo echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo ufw enable
sudo ufw allow 8080/tcp
sudo ufw allow 22/tcp
sudo ufw reload
