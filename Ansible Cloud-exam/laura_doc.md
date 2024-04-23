# DEPLOYMENT OF PHP LARAVEL ON UBUNTU LAMP STACK 

![Alt text](<laravel slave.png>)

This documentation is a very simple explanation of how to use the repo above to run the laravel application on an Ubuntu machine with a LAMP (Linux, Apache, MySql and php) stack  present.

Apache is going to be used as the web-sever while MySql will be used as the data base and php will be the base language laravel runs on.

There is also a master and slave machine that will be created using a bash-script. on the master we are going to be running a script that installs LAMP Stack and deploy laravel 

> **heads up**: *the script is non-interactive*

And on the slave we are going to be using an ansible playbook to run the same script that deploys laravel and LAMP Stack with a little difference 

Ansible will also be helping us create a cron job the checks the servers uptime every 12 AM

---

## BREAK DOWN OF THE REPO


