---
title: Backing Up & Restoring a MySQL Database from the Command Line
date: 2019-11-16 18:32:19
tags:
---
A quick guide on using the MySQL CLI to manage your database backups.

-------
### Backup
Use [MySQLDump](https://dev.mysql.com/doc/refman/8.0/en/mysqldump.html) to backup the database:
```bash
mysqldump -u [user_name] -p [database_name] > [file_name].sql
```
Where:
* [user_name] is the name of your MySQL user
* [database_name] is the name of your database
* [file_name] is the name of your output file

-------
### Restore
Use the [MySQL command line interface](https://dev.mysql.com/doc/refman/8.0/en/mysql.html) to restore from the backup you made previously:
```bash
mysql -u [user_name] -p [database_name] < [file_name].sql
```
Where:
* [user_name] is the name of your MySQL user
* [database_name] is the name of your database
* [file_name] is the name of your input file