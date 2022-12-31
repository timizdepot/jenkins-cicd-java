# sudo useradd --no-create-home node_exporter

# wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz
# tar xzf node_exporter-1.0.1.linux-amd64.tar.gz
# sudo cp node_exporter-1.0.1.linux-amd64/node_exporter /usr/local/bin/node_exporter
# rm -rf node_exporter-1.0.1.linux-amd64.tar.gz node_exporter-1.0.1.linux-amd64

# sudo cp node-exporter.service /etc/systemd/system/node-exporter.service

# sudo systemctl daemon-reload
# sudo systemctl enable node-exporter
# sudo systemctl start node-exporter
# sudo systemctl status node-exporter

# node-exporter installations
sudo useradd --no-create-home node_exporter

wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz
tar xzf node_exporter-1.0.1.linux-amd64.tar.gz
sudo cp node_exporter-1.0.1.linux-amd64/node_exporter /usr/local/bin/node_exporter
rm -rf node_exporter-1.0.1.linux-amd64.tar.gz node_exporter-1.0.1.linux-amd64

# setup the node-exporter dependencies
sudo git clone -b installations https://github.com/timizdepot/devops-fully-automated.git /tmp/devops-fully-automated
sudo cp /tmp/devops-fully-automated/prometheus-setup-dependencies/node-exporter.service /etc/systemd/system/node-exporter.service

sudo systemctl daemon-reload
sudo systemctl enable node-exporter
sudo systemctl start node-exporter
sudo systemctl status node-exporter