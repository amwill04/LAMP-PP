# vagrant-python
Vagrant file to download and provsion a VB of my vagrant box hosted on atlas.
Packer build for that box can be found under my account. The LAMP server built
includes the following

* ubuntu server 64
* pip
* git
* virtualenv
* virtualenvwrapper
* mysql-python.connector
* mysql
* phantomjs
* apacher2
* php

## Requirements
Before starting the following must be installed:
* Virtualbox
* Vagrant

## Installation

1. `$ git clone https://github.com/amwill04/LAMP-Python-Phantomjs-Vagrant`
3. `$ vagrant up`

## Use
To use the box simply open terminal and run:
* `$ cd {path where git was cloned}`
* `$ vagrant ssh`

The shared folder in is synced with `/var/www/html` so any web development dropped
into that folder can be navigated to through 192.168.33.10/
