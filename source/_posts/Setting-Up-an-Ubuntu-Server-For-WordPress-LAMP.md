---
title: Setting Up an Ubuntu Server For WordPress (LAMP)
date: 2019-10-28 18:33:35
tags:
- Linux
- WordPress
---
### Getting Ready
Update your package list and install upgrades:
```
sudo apt update && sudo apt upgrade
```
### Install Apache
```
sudo apt install apache2
```
### Install MYSQL Server
```
sudo apt install mysql-server
```
### Configure MYSQL Server
Login to the MYSQL shell with:
```
sudo mysql -u root
```
Create a new database for WordPress:
```
CREATE DATABASE wordpress;
GRANT ALL ON wordpress.* TO 'wordpress' IDENTIFIED BY 'password';
```
*Make sure to set your password to something secure!*

Exit the shell:
```
quit
```

Run the MYSQL Secure Installation:
```
sudo mysql_secure_installation
```
Make sure to read each option carefully, but generally speaking you can answer yes to all in most cases.
### Install PHP
```
sudo apt install php7.2 libapache2-mod-php7.2 php-mysql
```
Also install some extra packages that might be needed by WordPress:
```
sudo apt install php-curl php-json php-cgi
```
### Allow Your Server Through The Firewall
```
sudo ufw allow in "Apache Full"
```
### Restart Apache
```
sudo service apache2 restart
```
