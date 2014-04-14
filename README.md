The purpose of this repository is to provide a demo of the PHP continuous integration server described on http://jenkins-php.org/.

This is a fork from original yanickj/jenkins-php. It mainly fix the bug that pear.phpqatools.org/phpqatools no longer support, and Dropbox block the image of Vagrant CentOS-6.3-x86_64-minimal.box due to bandwidth issue.

Per jenkins-php.org and www.phpqatools.org suggested, this git install following package one-by-one

 * PHPUnit
 * PHP_CodeSniffer
 * PHPLOC
 * PHP_Depend
 * PHPMD
 * PHPCPD
 * phpDox

Also this git use CentOS-6.5-x86_64-mimimal.box from:

http://nrel.github.io/vagrant-boxes

Please make sure you have faster connection with it.

#### Requirements
 * [Vagrant](http://www.vagrantup.com/)
 * [VirtualBox](https://www.virtualbox.org/ "Oracle")

#### Installation
 1. Install Vagrant and VirtualBox.
 2. Clone php-jenkins repository to a directory on your host machine. 
 3. Initialize and update git submodules (run git submodule init; git submodule update; in cloned repo directory).
 4. Invoke "vagrant up"

The included Vagrantfile will create a virtual machine, install Jenkins and the required PHP and Jenkins Plugins.  Once the Vagrant guest machine is running Jenkins can be accessed at http://192.168.50.10:8080
