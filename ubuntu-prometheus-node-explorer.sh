cd /tmp
 wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz
      sudo tar -xvf node_exporter-1.0.1.linux-amd64.tar.gz
      sudo mv node_exporter-1.0.1.linux-amd64/node_exporter /usr/local/bin/
      sudo useradd -rs /bin/false node_exporter
      
      sudo nano /etc/systemd/system/node_exporter.service

[Unit]
Description=Node Exporter

After=network.target

[Service]

User=node_exporter

Group=node_exporter

Type=simple

ExecStart=/usr/local/bin/node_exporter

[Install]

WantedBy=multi-user.target
      
      
      systemctl start node_exporter
