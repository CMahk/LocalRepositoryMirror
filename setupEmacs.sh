#!/bin/bash

git clone https://git.savannah.gnu.org/git/emacs.git
cd ./emacs
git checkout emacs-27.2

source ./autogen.sh
./configure --without-selinux
make -j4
