#!/bin/bash
git clone -b prometheus-and-grafana https://github.com/timizdepot/jenkins-cicd-java.git /tmp/jenkins-cicd-java
cd /tmp/jenkins-cicd-java
./install-grafana.sh
./install-node-expoerter.sh
