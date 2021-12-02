#!/bin/bash

tar --create --file Python-2.7.18.tgz ./Python-2.7.18/
mv Python-2.7.18.tgz ./rpmbuild/SOURCES/

cd ./rpmbuild/
rpmbuild --define "_topdir `pwd`" -v -bb SPECS/Python-2.7.18.spec

