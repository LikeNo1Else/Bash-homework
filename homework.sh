#!/bin/bash

function k-pop(){
        sudo useradd jenny
        sudo useradd rose
        sudo useradd lisa
        sudo useradd jison
        sudo groupadd blackpink
        sudo usermod -aG blackpink jenny
        sudo usermod -aG blackpink rose
        sudo usermod -aG blackpink lisa
        sudo usermod -aG blackpink jison
}


function wordpress(){
        sudo yum install httpd php php-mysqlnd php-fpm php-mysqli mariadb105-server php-json -y
        sudo systemctl start httpd
        sudo systemctl enable httpd
        wget https://wordpress.org/latest.tar.gz
        sudo tar -xzf latest.tar.gz
        sudo mv wordpress/* /var/www/html
        sudo chown -R apache:apache /var/www/html
        sudo chmod -R 755 /var/www/html
        sudo rm -rf wordpress
        sudo rm -rf latest.tar.gz
        sudo systemctl restart httpd
}


function binary(){
        sudo yum install tree yum-utils shadow-utils -y
        sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
        sudo yum -y install terraform
        terraform -v
}

k-pop
wordpress
binary

