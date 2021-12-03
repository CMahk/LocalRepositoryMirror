#!/bin/bash

if [ ! -f "./Python-2.7.18.tgz" ]; then
    echo "Python 2.7.18 source not found. Downloading..."
    wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tgz
    mv Python-2.7.18.tgz ./rpmbuild/SOURCES/
fi

cd ./rpmbuild/
rpmbuild --define "_topdir `pwd`" -v -bb SPECS/Python-2.7.18.spec

