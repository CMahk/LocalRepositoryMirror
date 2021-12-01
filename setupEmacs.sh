#!/bin/bash

git clone https://git.savannah.gnu.org/git/emacs.git
cd ./emacs
git checkout emacs-24.3

source ./autogen.sh
cd ..
tar --create --file emacs-24.3.tar.gz ./emacs-24.3/
mv emacs-24.3.tar.gz ./rpmbuild/SOURCES/

cd ./rpmbuild/
rpmbuild --define "_topdir `pwd`" -v -bb SPECS/emacs.spec
