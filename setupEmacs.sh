#!/bin/bash

if [ ! -d "./emacs-24.3/" ]; then
    echo "Emacs repository not found. Cloning..."
    git clone https://git.savannah.gnu.org/git/emacs.git
    mv ./emacs ./emacs-24.3
    cd ./emacs-24.3
    git checkout emacs-24.3
    ./autogen.sh
    cd ..
fi

echo "Creating tar..."
tar --create --file emacs-24.3.tar.gz ./emacs-24.3/
mv emacs-24.3.tar.gz ./rpmbuild/SOURCES/

cd ./rpmbuild/
rpmbuild --define "_topdir `pwd`" -v -bb SPECS/emacs-24.3.spec
