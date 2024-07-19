##Installing Tomcat

#!/bin/bash
sudo yum update –y
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.26/bin/apache-tomcat-10.1.26.tar.gz
sudo tar -xvzf apache-tomcat-10.1.26.tar.gz
sudo mv apache-tomcat-10.1.26 tomcat
sudo mv tomcat /opt



cd /opt/tomcat
ls -al
