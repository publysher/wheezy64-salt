wheezy64-salt
=============

A Veewee definition to create a 64-bit Debian 7.1 'wheezy' image that can be provisioned with SaltStack.

The goal of this project is to create the absolute minimal image necessary for full automated deployments; in other words, only those packages to ensure a running SSH server and a functioning salt stack. 

Although the ideal solution lies heavy modifications of the installer's `preseed.cfg` to ensure that only those packages are installed that are absolutely necessary, the current approach takes a shorter route: after installing the base system and Salt, all non essentials packages are removed after the fact. 

So far, the resulting box has been sized down to *188 Mb*,


Usage
-------------

1. Install [Veewee](https://github.com/jedi4ever/veewee)
2. Install [Vagrant](http://www.vagrantup.com/)
3. Create a new definition: 

	`bundle exec veewee vbox define 'wheezy64-salt' 'git://github.com/publysher/wheezy64-salt'`

4. Build your box: 

	`bundle exec veewee vbox build 'wheezy64-salt'`

5. Export your box from VeeWee: 

	`bundle exec veewee vbox export 'wheezy64-salt'`

6. Import your box in Vagrant: 

	`vagrant box add wheezy64-salt wheezy64-salt.box`

7. Initialize a VM somewhere: 

	`vagrant init wheezy64-salt`

8. And start provisioning


Security
-------------
Security should also be part of the provisioning, and be aware of the fact that this image contains a default vagrant user with the default insecure SSH keys. 


About
-------------

This definition is based on the original [VeeWee Debian-7.1.0-amd64-netboot](https://github.com/jedi4ever/veewee/tree/master/templates/Debian-7.1.0-amd64-netboot) 
template. 

I've made some changes to the `definition.rb` file and marked them with `#YDD`. 

