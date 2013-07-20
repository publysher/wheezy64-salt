wheezy64-salt
=============

A VeeWee definition to create a 64-bit Debian 7.1 'wheezy' image that can be provisioned with SaltStack

Usage
-------------

1. Install [VeeWee](https://github.com/jedi4ever/veewee)
1. Install [Vagrant](http://www.vagrantup.com/)
2. Create a new definition: `bundle exec veewee vbox define 'wheezy64-salt' 'git://github.com/publysher/wheezy64-salt'`
3. Build your box: `bundle exec veewee vbox build 'wheezy64-salt'`
4. Export your box from VeeWee: `bundle exec veewee vbox export 'wheezy64-salt'`
5. Import your box in Vagrant: `vagrant box add wheezy64-salt wheezy64-salt.box`
6. Initialize a VM somewhere: `vagrant init wheezy64-salt`
7. And start provisioning




