# vagrant-python
ubuntu box for python development with a focus on web scraping

Includes the following:
* ubuntu/trusty64
* virtualenv
* virtualenvwrapper
* pip
* chrome
* chromedriver
* mysql-python.connector

## Requirements
Before starting the following must be installed:
* Virtualbox
* Vagrant

## Installation

1. `$ git clone https://github.com/amwill04/vagrant-python`
2. `$ cd {path where git was cloned}`
3. `$ vagrant up`

## Use
To use the box simply open terminal and run:
* `$ cd {path where git was cloned}`
* `$ vagrant ssh`

This will open a session on the box where you can created virtual environments for python development using the following:
* `$ mkvirtualenv {env-name}`

This will take you straight into the newly created virtual environment.
From here you can install packages in the the environment in the normal fashion with pip:
* `$ pip install {package-name}`

Visit http://virtualenvwrapper.readthedocs.org/en/latest/index.html for more information on virtualenvwrapper
