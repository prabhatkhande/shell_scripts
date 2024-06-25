#!/bin/bash

#Download Java Tarball file from internet
sudo wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "https://download.oracle.com/java/22/latest/jdk-22_linux-x64_bin.tar.gz"

#Extract tar file
tar -zxvf jdk-22_linux-x64_bin.tar.gz

#Remove tar file after the extraction to save storage
rm -rf jdk-22_linux-x64_bin.tar.gz

#Make an directory where you want to install java
sudo mkdir -p /usr/lib/jvm

#Move java extracted file to installation directory
sudo mv jdk-22.0.1 /usr/lib/jvm/

#Configure Java environment variables
JAVA_HOME="/usr/lib/jvm/jdk-22.0.1"
echo "JAVA_HOME=${JAVA_HOME}" >> ~/.bashrc
echo "export PATH=$PATH:$JAVA_HOME/bin" >> ~/.bashrc

#Update alternatives to use the newly installed JDK
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-22.0.1/bin/java" 2
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk-22.0.1/bin/javac" 2

