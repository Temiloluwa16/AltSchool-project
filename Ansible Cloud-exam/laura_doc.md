# DEPLOYMENT OF PHP LARAVEL ON UBUNTU LAMP STACK 

![Alt text](<AltSchool-project/laravel slave.png>)

This documentation is a very simple explanation of how to use the repo above to run the laravel application on an Ubuntu machine with a LAMP (Linux, Apache, MySql and php) stack  present.

Apache is going to be used as the web-sever while MySql will be used as the data base and php will be the base language laravel runs on.

There is also a master and slave machine that will be created using a bash-script. on the master we are going to be running a script that installs LAMP Stack and deploy laravel 

> **heads up**: *the script is non-interactive*

And on the slave we are going to be using an ansible playbook to run the same script that deploys laravel and LAMP Stack with a little difference 

Ansible will also be helping us create a cron job the checks the servers uptime every 12 AM

---

## HOW TO RUN THE SCRIPT

This script is very readable and reusable and because of that, it is flexible. The bash-scriptis to run when the master machine is up. 
To run this script you will need to consider just 3 things

1. Mysql database
2. .ENV (laravel file)
3. ansible.config file

## MySql

Due to the fact that we are using parameters to create a database while running the script you will need just 2 arguments:

```bash
./bash-script bertha bertha
```
The 1st Argument is for the DB_USERNAME and DB_DATABASE

The 2nd Argument is for the DB_PASSWORD

> **NOTE**: whatever username and password you are using it must align with the username and password in the .env file

## .ENV (laravel file)

Since everything is running automatically we will also need to change the .env file automatically:

```bash bertha bertha
sudo sed -i 's/DB_DATABASE=laravel/DB_DATABASE=bertha/' /var/www/html/laravel/.env

sudo sed -i 's/DB_DATABASE=laravel/DB_DATABASE=bertha/' /var/www/html/laravel/.env

sudo sed -i 's/DB_PASSWORD=/DB_PASSWORD=bertha/' /var/www/html/laravel/.env
```

Make sure this three lines correspond with the argument you will be adding while running the script.

You can find this code in the **bash-script** "LAMP.sh" file and make changes to only the results after the = symbol on the right hand side.

## Ansible.config file

In the **bash-script** file there is a section for the ansible config file.

In this path all you will need to change is the **ServerName** and you will be changing this to the domain name or ip address of the server you want to run the script on.

---
The sript is now ready to run successfully


