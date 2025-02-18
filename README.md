# TNTech_CPS

## Assumptions

This assumes that Virtualbox is installed and the extension pack has been installed with your computer rebooted as well.

## AMD64 Machines (Most Machines)

Use the CPS_Lab folder when running Vagrant.

## ARM64 Machines (M-Series Macbooks)

Use the CPS_Lab_arm64 folder when running Vagrant.

## What is this for?

This Vagrantfile sets up the entire virtual side of the Cyber Physical Security labs. It stands up plc, hmi, and kali VMs with OpenPLC and ScadaBR installed as well.

This Vagrantfile also takes care of creating a private NAT Network and portforwarding from the PLC and HMI to localhost as well!

## Vagrant

Install Vagrant for your operating system here: https://developer.hashicorp.com/vagrant/downloads

What is Vagrant and how to use it? https://www.youtube.com/watch?v=sr9pUpSAexE&t=168s

### Vagrant Commands

https://developer.hashicorp.com/vagrant/docs/cli

## Deploying the VM Lab

Clone/Download repo to local file system.

Navigate to CPS_Lab (ex. cd CPS_Lab)

In Powershell, Bash, or Zsh... run ```vagrant init``` once in the CPS_Lab folder.

Once that finishes, run ```vagrant up``` and wait for a few minutes (it might take a while). This will stand up the entire lab. If asked about allowing Virtualbox to manage networks, select Allow.

**Important:** You will need to be in the CPS_Lab folder for any of these Vagrant commands to control the CPS environment, including to ssh to a machine.

<img src="./assets/cps_rec.gif" width="80%" height="80%"/>

## Using the environment

Once built, you can access the environment from Virtualbox, or by typing ```vagrant ssh``` followed by which machine. Example for each one.

```vagrant ssh plc```

```vagrant ssh hmi```

```vagrant ssh kali```

<img src="./assets/cps_access.gif" width="80%" height="80%"/>


## Stopping and Destroying

To simple stop the environment at once, run ```vagrant halt```. The environment can be started again by running ```vagrant up```.

To completely destroy the environment, run ```vagrant destroy```.

All of the vagrant commands must be ran from the folder with your Vagrantfile in it.

<img src="./assets/cps_destroy.gif" width="80%" height="80%"/>


## Environment Information

### Usernames an passwords

Each box built with vagrant will have a user names vagrant. I have changed the passwords to 'toor' in case you need it. 

### IP Addresses

PLC: 192.168.50.4

HMI: 192.168.50.5

Kali: 192.168.50.6

### Kali

The Kali VM is actually just Ubuntu with metasploit installed. By default this VM is headless (no GUI). This can be modified by changing gui = False to True. You can stop the 'Kali' VM from building by uncommenting out the section at the bottom of the Vagrantfile.

## Known Issues/Bugs

I will be updating this section as I find/hear about bugs students have.


#### Mostly Windows Issue

If you run ```vagrant destroy``` and then ```vagrant up``` and get an error along the lines of "Cannot rename folder_XX to folder_YY" then find where Virtualbox stores your VM folders (should be under user home folder) and delete the folders for plc, hmi, and kali. 

After doing so, you can rerun ```vagrant up```.
