cd /tmp
 wget https://github.com/prometheus/node_exporter/releases/download/v1.0.1/node_exporter-1.0.1.linux-amd64.tar.gz
      tar -xvf node_exporter-1.0.1.linux-amd64.tar.gz
      mv node_exporter-1.0.1.linux-amd64/node_exporter /usr/local/bin/
      useradd -rs /bin/false node_exporter
      
      /etc/systemd/system/node_exporter.service
      systemctl start node_exporter
