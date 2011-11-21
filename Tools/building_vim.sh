#!/bin/sh

export LDFLAGS="-L/usr/lib"
make clean
make distclean

#./configure --with-features=huge --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config

./configure --with-features=huge --enable-pythoninterp --with-python-config-dir=/home/dlitz/Dev/python/lib/python2.7/config
