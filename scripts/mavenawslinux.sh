##Installing Maven

####Steps to create and run the script file
#Create a script file (ends with .sh) by copying and pasting codes below
#assign permission: chmod +x scriptfilename.sh
#run the script file: ./scriptfilename.sh

#!/bin/bash
sudo yum update –y
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.8/binaries/apache-maven-3.9.8-bin.tar.gz
sudo cp apache-maven-3.9.8-bin.tar.gz /opt
sudo tar -xvzf /opt/apache-maven-3.9.8-bin.tar.gz
sudo mv apache-maven-3.9.8 maven
sudo mv maven /opt

## After the script is excuted successfully,
$ sudo su -
# cd /opt/maven
