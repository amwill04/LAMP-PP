# vagrant-python
This box has become more of an experiment and learning tool for me to understand provisioning with puppet.
For that reason you will find LAMP boxes that are available straight out the box, scotch/box being an excellent one.
However they removed puppet from scotch 2.0 so I therefore decided to experiment with building the whole stack.
This ubuntu box has a focus on web scraping and providing a web app.

Includes the following:
* ubuntu/trusty64
* pip
* git
* virtualenv
* virtualenvwrapper
* xvfb
* chrome
* chromedriver
* mysql-python.connector
* mysql
* phantomjs

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
