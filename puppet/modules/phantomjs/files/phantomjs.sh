#!/bin/bash

cd /tmp
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 2.0
./build.sh
