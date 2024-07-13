##Install Tomcat Server

#!/bin/bash
sudo yum update -y
sudo dnf install java-17-amazon-corretto -y
sudo yum upgrade
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.26/bin/apache-tomcat-10.1.26.tar.gz
sudo cp apache-tomcat-10.1.26.tar.gz /opt/
sudo tar -xvzf /opt/apache-tomcat-10.1.26.tar.gz
sudo mv apache-tomcat-10.1.26 /opt/
sudo mv /opt/apache-tomcat-10.1.26 /opt/tomcat
sudo chmod +x /opt/tomcat/bin/startup.sh
sudo chmod +x /opt/tomcat/bin/shutdown.sh


##Do the following manually
sudo su -
# sudo /opt/tomcat/bin
# ./startup.sh
