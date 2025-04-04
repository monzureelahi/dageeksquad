##Installing Tomcat in AWS Linux 2

sudo yum update –y
sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.39/bin/apache-tomcat-10.1.39.tar.gz
sudo tar -xvzf apache-tomcat-10.1.39.tar.gz
sudo mv apache-tomcat-10.1.39.tar.gz tomcat
sudo mv tomcat /opt
cd /opt/tomcat
ls -al

amazon-linux-extras install java-openjdk11 -y

Start tomcat
cd /opt/tomcat/bin
./startup
