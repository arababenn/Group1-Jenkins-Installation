Looking for a tool to enable continuous integration and delivery of your application? Give Jenkins a try.


image

Tools
    - Linux (sudo privileges)
    - Java
    - Jenkins


What is Jenkins

Jenkins is a continuous integration server (continuous integration server is the practice of running tests on non-developer machine automatically every time when new code is pushed into source repository). It is written in Java. It provides many plugins that help to support building, deploying and automating any project. It can be installed through native system packages, Docker or even run standalone by any machine with the help of JRE (Java Runtime Environment). It automates multiple tasks including building, testing and delivering software.
Continuous Integration is the most important part of DevOps that is used to integrate various DevOps stages.
Jenkins achieves Continuous Integration with the help of plugins. Plugins allows the integration of Various DevOps stages. If you want to integrate a particular tool, you need to install the plugins for that tool. For example: Git, Maven 2 project, Amazon EC2, HTML publisher etc

Steps 1
Jenkins requires Java to function, but Jenkins won't work with just any release of Java. Here's how to install a version of Jenkins that will make the installation

To check if java is installed
Command
java -version
image

if java is not installed then execute this commande
sudo apt install openjdk-8-jdk -y

once java is installed, please chekc the version. If version is 8 or above then you are good to go

Step 3
Now you have to add Debian Repository
command
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

Step 4
Once you have added, now you have to add this repository to the system
command
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'


Step 5
update the apt package list and install the latest version of Jenkins by typing:
commands
 sudo apt update -y
 sudo apt install jenkins -y

Step 6
Now you have to verifiy if Jenkins is installed and the service is ruuning
command
systemctl status jenkins

Step 7
By default jenkins provide a password. To find
that password 
command
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

Step 8



Optional steps (in case you want to modify the port of jenkins)
HTTP_PORT=....

command
cd /etc/default/
sudo nano jenkins






