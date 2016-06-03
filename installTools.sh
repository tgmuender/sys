#!/usr/bin/env bash

addIfNotExists() {
    echo $1;
    if grep -Fxq "$1" ~/.env
    then
        exit;
    else
        echo $1 >> ~/.env
    fi
}

rm -rf apache-maven*
wget http://mirror.switch.ch/mirror/apache/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip
unzip -q apache-maven-3.3.9-bin.zip
rm -rf /home/tobias/apps/apache-maven-3.3.9
mv apache-maven-3.3.9 /home/tobias/apps/
rm -rf /home/tobias/apps/maven
ln -s /home/tobias/apps/apache-maven-3.3.9/ /home/tobias/apps/maven

includeHome="export M2_HOME=\"/home/tobias/apps/maven\""
includePath="export PATH=\"\$PATH:\$M2_HOME/bin\""

touch ~/.env

addIfNotExists "$includeHome"
addIfNotExists "$includePath"
