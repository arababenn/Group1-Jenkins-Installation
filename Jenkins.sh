#!/bin/bash



sudo apt install openjdk-8-jdk -y


wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -


sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'


 sudo apt update -y
 sudo apt install jenkins -y

systemctl status jenkins
systemctl start jenkins
systemctl enable jenkins



sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

cd /etc/default/
sudo nano jenkins