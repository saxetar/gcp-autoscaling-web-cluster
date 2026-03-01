#!/bin/bash
apt-get update -y
apt-get install -y nginx stress
echo "<h1>Welcome Onboard!</h1><h2>VCC Auto-Scaler Node Active | Host: $(hostname)</h2>" > /var/www/html/index.nginx-debian.html
systemctl restart nginx
