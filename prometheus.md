#!/bin/bash
git clone https://github.com/timizdepot/jenkins-cicd-java.git
cd jenkins-cicd-java
git checkout prometheus-and-grafana
./install-prometheus.sh
./install-node-expoerter.sh