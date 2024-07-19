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
# cd /opt/maven/bin
# ./mvn -v

##If you are outside of this bin directory, this won’t work. This is why you need to add environment variables

##Locate the locaton of Java and maven

# cd ~
# pwd
# ll -a
# find / -name jvm

## Location for Java is  /usr/lib/jvm/java-17-amazon-corretto.x86_64
## Location for Maven is /opt/maven

# cd ~
# ll -a
## Add the below in .bash_profile
# nano .bash_profile
M2_HOME=/opt/maven
M2=/opt/maven/bin
JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto.x86_64
# User specific environment and startup programs
PATH=$PATH:$HOME/bin:$JAVA_HOME:$M2_HOME:$M2
export PATH

##Save the file, Ctrl-O and Press Enter. Press Ctrl-X to exit
##Test it:
# echo$PATH
##Log off and log back on 
# sudo su -
# echo$PATH

##Logon to Jenkins, Go to Manage Jenkins > Plugins
##Go to Available Tab and install Maven Integration plugin
##Go to Manage Jenkins > Tools
##Enter Java(/usr/lib/jvm/java-17-amazon-corretto.x86_64) and Maven Path (/opt/maven)
##Click Create New Item, Enter Name, Select Maven Project, Click Ok
##Copy and paste the git repository name https://github.com/monzureelahi/helloworld.git
##Enter goals and option (Maven Build Lifecycle): clean install
##Click Apply and Save
##Click Build now
##Check Console Output and .war file

