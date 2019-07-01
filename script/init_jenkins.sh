#!/usr/bin/env bash 

# 自动选择最快源
yum install yum-fastestmirror -y

# 安装 jdk
yum install -y java-1.8.0-openjdk-devel.x86_64

# 添加 Jenkins 源
sudo wget -O /etc/yum.repos.d/jenkins.repo http://jenkins-ci.org/redhat/jenkins.repo

sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key

# 添加依赖 git
yum install git -y

# 安装 Jenkins
yum install jenkins -y
