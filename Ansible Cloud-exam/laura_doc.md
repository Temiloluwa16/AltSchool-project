# DEPLOYMENT OF PHP LARAVEL ON UBUNTU LAMP STACK 


This documentation is a very simple explanation of how to use the repo above to run the laravel application on an Ubuntu machine with a LAMP (Linux, Apache, MySql and php) stack  present.

Apache is going to be used as the web-sever while MySql will be used as the data base and php will be the base language laravel runs on.

There is also a master and slave machine that will be created using a bash-script. on the master we are going to be running a script that installs LAMP Stack and deploy laravel 

> **heads up**: *the script is non-interactive*

And on the slave we are going to be using an ansible playbook to run the same script that deploys laravel and LAMP Stack with a little difference 

Ansible will also be helping us create a cron job the checks the servers uptime every 12 AM

---
# EXAM PROJECT DOCUMENTATION 
### 1. the project contains the automation and provisioning of two Ubuntu-based servers, named “Master” and “Slave”, using Vagrant, with a bash script to automate the deployment of a LAMP (Linux, Apache, MySQL, PHP) stack, and cloned a PHP application from GitHub, with all necessary packages, and configured Apache web server and MySQL while using ansible to execute the bash script on the Slave node and cronjob to create check the server's uptime every 12:00am. the bash script is reusable and readable and can be accessible through the following repository: https://github.com/Temiloluwa16/AltSchool-project.git

### 2. Provisioning of "master" and "slave"
the file "vagrant-up.sh" when runned/executed, spines up the two ubuntu master and slave machines while creating a vagrantfile.


### 3. laravel deployment on master node
the file "lamp-master.sh" deploys laravel cloned from github repository only on the master node. https://github.com/laravel/laravel.

![laravel on master node](<snapshorts/successfuly install laravel and all dependencies.PNG>)


![laravel on master node](<snapshorts/laravel successfuly installed.PNG>)

![master IP@192.168.30.20](<snapshorts/laravel page with master ip adress.PNG>)


### 4. the ansible playbook
in the absible-playbook directory contains ansible.cfg, inventory, play-slave.yml and a directory called "files"
#### a. Ansible.cfg:- This is the brain and the heart of Ansible, the file that governs the behavior of all interactions performed by the control node.

#### b. Iventory:-the inventory is a list of managed nodes, or hosts, that Ansible deploys and configures. this inventory carries the ip address of the slave node in this project.

#### c. playbook.yml:- the Ansible Playbook in this project contains the blueprint of automation tasks on the slave node, which are IT actions executed with limited manual effort, across an inventory of IT solutions.

#### d. files:- contains the file "lamp_deploy.sh" which the playbook use to deploy laravel cloned from github repository only on the slave node. https://github.com/laravel/laravel.git


![Ansble-playbook](<snapshorts/installations of ansible playbook to slave.PNG>)



![laravel on slave node IP@192.168.56.5](<snapshots/laravel-slave.png>)

---
The sript is now ready to run successfully


