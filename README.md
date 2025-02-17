# TNTech_CPS

## Assumption

This assumes that Virtualbox is installed and the extension pack has been installed with your computer rebooted as well.

## What is this for?

This Vagrantfile sets up the entire virtual side of the Cyber Physical Security labs. It stands up plc, hmi, and kali VMs with OpenPLC and ScadaBR installed as well.

This Vagrantfile also takes care of creating a private NAT Network and portforwarding from the PLC and HMI to localhost as well!

## Vagrant

Install Vagrant for your operating system here: https://developer.hashicorp.com/vagrant/downloads

What is Vagrant and how to use it? https://www.youtube.com/watch?v=sr9pUpSAexE&t=168s

### Vagrant Commands

https://developer.hashicorp.com/vagrant/docs/cli

## How to use this repo

Clone/Download repo to local file system.

Navigate to CPS_Lab (ex. cd CPS_Lab)

In Powershell, Bash, or ZSH... run ```vagrant init``` once in the CPS_Lab folder.

Once that finishes, run ```vagrant up``` and wait for a few minutes (it might take a while). This will stand up the entire lab. If asked about allowing Virtualbox to manage networks, select Allow.

**Important:** You will need to be in the CPS_Lab folder for any of these Vagrant commands to control the CPS environment, including to ssh to a machine.

## Using the environment

Once built, you can access the environment from Virtualbox, or by typing ```vagrant ssh``` followed by which machine. Example for each one.

```vagrant ssh plc```

```vagrant ssh hmi```

```vagrant ssh kali```

### Usernames an passwords

Each box built with vagrant will have a user names vagrant. I have changed the passwords to 'toor' in case you need it. 

## Stopping and Destroying

To simple stop the environment at once, run ```vagrant halt```. The environment can be started again by running ```vagrant up```.

To completely destroy the environment, run ```vagrant destroy```.

All of the vagrant commands must be ran from the folder with your Vagrantfile in it.
