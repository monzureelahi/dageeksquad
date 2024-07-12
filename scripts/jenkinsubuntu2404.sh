Steps to create and run the script file
Create a script file (ends with .sh) by copying and pasting codes below
assign permission: chmod 777 scriptfilename.sh
run the script file: ./scriptfilename.sh

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
sudo ufw reload
