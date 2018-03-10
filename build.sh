#!/bin/bash

set -x
BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"
echo $BASEDIR
mkdir -p cppunit_install
cd cppunit
./configure --prefix=$BASEDIR/cppunit_install/
make install
