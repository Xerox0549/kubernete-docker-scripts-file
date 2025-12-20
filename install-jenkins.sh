#!/bin/bash

# Jenkins Installation Script for Ubuntu EC2
# Run as: sudo bash install_jenkins.sh

echo "===================================="
echo " Updating system packages"
echo "===================================="
sudo apt update -y && sudo apt upgrade -y

echo "===================================="
echo " Installing Java (OpenJDK 17)"
echo "===================================="
sudo apt install openjdk-17-jdk -y

echo "Java version:"
java -version

echo "===================================="
echo " Adding Jenkins repository & key"
echo "===================================="
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
/usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

echo "===================================="
echo " Installing Jenkins"
echo "===================================="
sudo apt update -y
sudo apt install jenkins -y

echo "===================================="
echo " Starting & Enabling Jenkins"
echo "===================================="
sudo systemctl start jenkins
sudo systemctl enable jenkins

echo "===================================="
echo " Jenkins Status"
echo "===================================="
sudo systemctl status jenkins --no-pager

echo "===================================="
echo " Jenkins Initial Admin Password"
echo "===================================="
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "===================================="
echo " Jenkins Installation Completed"
echo " Access Jenkins at: http://<EC2-PUBLIC-IP>:8080"
echo "===================================="
