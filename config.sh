#!/usr/bin/bash

#Install_Gnome

function graphic_env() {

	yum groupinstall "GNOME Desktop" -y
	systemctl set-default graphical.target
	systemctl isolate graphical.target

}

#Setup_Jenkins

#function jenkins_setup() {
#
#
#	yum install java-1.8.0-openjdk-devel
#	yum install htop
#	wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
#	rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
#
#	yum install jenkins
#	systemctl start jenkins
#	systemctl enable jenkins
#}
#
#jenkins_setup
graphic_env

