##Tomcat Server automated installation
##Launch AWS Linux 2023 EC2 Instance
#Add Port 22, 8080 in inbound Port

##Steps to create and run the script file
#Create a script file (ends with .sh) by copying and pasting codes below
#assign permission: chmod 777 scriptfilename.sh or chmod +x scriptfilename.sh
#run the script file: ./scriptfilename.sh

##After the installation is completed, Go to browser, enter publicipaddress:8080

##Install Tomcat Server (Script)

#!/bin/bash
sudo yum update -y
sudo dnf install java-17-amazon-corretto -y
sudo yum upgrade
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.26/bin/apache-tomcat-10.1.26.tar.gz
sudo tar -xvzf apache-tomcat-10.1.26.tar.gz
sudo mv apache-tomcat-10.1.26 tomcat
sudo mv tomcat /opt
sudo chmod +x /opt/tomcat/bin/startup.sh
sudo chmod +x /opt/tomcat/bin/shutdown.sh

##Start the Tomcat - Do the following manually
$ sudo su -
# sudo /opt/tomcat/bin
# ./startup.sh

##Go to browser and test http://publicipaddress:8080 to check Tomcat Server

##Add comment to block access for local host only starts with valve (first two line)
# nano /opt/tomcat/webapps/host-manager/META-INF/context.xml
# nano /opt/tomcat/webapps/manager/META-INF/context.xml

Comment starts with <!--
Comment ends with -->

# nano /opt/tomcat/conf/tomcat-users.xml
## Copy and paste the code at the end of the file before the last tag

<role rolename="manager-gui"/>
<role rolename="manager-script"/>
<role rolename="manager-jmx"/>
<role rolename="manager-status"/>
<user username="admin" password="admin" roles="manager-gui, manager-script, manager-jmx, manager-status"/>
<user username="deployer" password="deployer" roles="manager-script"/>
<user username="tomcat" password="s3cret" roles="manager-gui"/>

#Go to browser and test http://publicipaddress:8080 to check Tomcat Server, check Server Status (User ID tomcat, Password S3cret)

## Download sample .war file from https://tomcat.apache.org/tomcat-10.1-doc/appdev/sample/
# cd /opt/tomcat/webapps
# wget https://tomcat.apache.org/tomcat-10.0-doc/appdev/sample/sample.war (Source https://tomcat.apache.org/tomcat-10.1-doc/appdev/sample/)

##Go to browser and test http://publicipaddress:8080/sample/

## .war file gets extracted automatically. We can edit them if needed

## Create .war file
##Install jar first: # yum install java-devel -y

## Create a tmp folder in /tmp, copy the .war file, unzip it using unzip command, edit index file using nano and create the .war file with following command

# jar -cvf sample2.war 
# Unzip .war file: unzip sample2.war
