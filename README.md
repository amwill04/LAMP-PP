# vagrant-python
ubuntu box for python development

Includes the following:
* ubuntu/trusty64
* virtualenv
* virtualenvwrapper
* pip
* chromedriver

## Installation
Before starting the following must be installed:
* Virtualbox
* Vagrant

1. $ git clone https://github.com/amwill04/vagrant-python
2. $ cd {path where git was cloned}
3. $ vagrant up

## Use
To use the box simply open terminal and run:
* $ cd {path where git was cloned}
* $ vagrant ssh

This will open a session on the box where you can created virtual environments for python development using the following:
* $ mkvirtualenv {env-name}

This will take you straingt into the newly created virtual environment.
From here you can install packages in the the environment in the normal fashion with pip:
* $ pip install {package-name}

Visit http://virtualenvwrapper.readthedocs.org/en/latest/index.html for more information on virtualenvwrapper
