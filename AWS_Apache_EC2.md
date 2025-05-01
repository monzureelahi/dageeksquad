# 🖥️ Linux Web Server on AWS 

This project showcases the deployment of a simple web server on a Linux EC2 instance in Amazon Web Services (AWS). It involves launching an EC2 instance, configuring Apache/Nginx, and serving a sample web page to the public internet.

---

## 📌 Project Objectives

- Launch a Linux EC2 instance on AWS (Amazon Linux 2 or Ubuntu)
- Configure networking and firewall rules (Security Groups)
- Install and run Apache or Nginx web server
- Host a simple HTML page
- (Optional) Configure a domain name

---

## 🛠️ Technologies Used

- AWS EC2 (Elastic Compute Cloud)
- Linux (Amazon Linux 2 / Ubuntu 22.04)
- Apache or Nginx Web Server
- Bash (for manual setup)
- SSH (for remote access)

---

## 🚀 Setup Instructions

### 1. Launch EC2 Instance
- Choose Amazon Linux 2 or Ubuntu 22.04
- Instance type: t2.micro (Free Tier eligible)
- Enable Auto-assign Public IP
- Open **port 22 (SSH)** and **port 80 (HTTP)** in Security Group

### 2. Connect via SSH
```bash
ssh -i your-key.pem ec2-user@<your-ec2-public-ip>
# or for Ubuntu:
ssh -i your-key.pem ubuntu@<your-ec2-public-ip>

## 🚀 Install Apache Server
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

## 🚀 Create a sample web page
echo "<h1>Welcome to My AWS Linux Web Server!</h1>" | sudo tee /var/www/html/index.html

## 🚀 Test Web Server
Visit: http://<your-ec2-public-ip> in your browser

