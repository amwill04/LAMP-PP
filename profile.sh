#!/bin/bash

grep 'export WORKON_HOME=$HOME/.virtualenvs' ~/.profile || echo -e '\nexport WORKON_HOME=$HOME/.virtualenvs' | tee -a ~/.profile
grep '/usr/local/bin/virtualenvwrapper.sh' ~/.profile || echo 'source /usr/local/bin/virtualenvwrapper.sh' | tee -a ~/.profile
