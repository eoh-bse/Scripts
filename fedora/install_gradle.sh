#!/bin/bash

echo "Enter gradle version to install: "
read version

file=gradle-$version
zipfile=$file-bin.zip
wget https://services.gradle.org/distributions/$zipfile

unzip $zipfile
sudo mv $file /usr/local/gradle

rm $zipfile

echo "export PATH=\$PATH:/usr/local/gradle/bin" >> ~/.bashrc
source ~/.bashrc

echo "Successfully installed Gradle $version"
