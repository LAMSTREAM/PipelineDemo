#!/bin/bash
# Update the package repository and install necessary packages
sudo yum update -y
sudo yum install ruby -y

# Download and install the CodeDeploy agent
cd /home/ec2-user
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto

# Optionally, start the CodeDeploy agent service
sudo service codedeploy-agent start