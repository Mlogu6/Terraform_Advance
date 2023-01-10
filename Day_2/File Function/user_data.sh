#! /bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo service httpd start
echo "My web site" >> /var/www/html/index.html