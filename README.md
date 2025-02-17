# TNTech_CPS

## Vagrant

Install Vagrant for your operating system here: https://developer.hashicorp.com/vagrant/downloads

### Vagrant Commands

https://developer.hashicorp.com/vagrant/docs/cli

## How to use this repo

Clone/Download repo to local file system.

Navigate to CPS_Lab (ex. cd CPS_Lab)

In Powershell, Bash, or ZSH... run ```vagrant init``` once in the CPS_Lab folder.

Once that finishes, run ```vagrant up``` and wait for a few minutes. This will stand up the entire lab. If asked about allow Virtualbox to manage networks, select Allow.

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
