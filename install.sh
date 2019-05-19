#!/bin/bash

curl https://netix.dl.sourceforge.net/project/ta-lib/ta-lib/0.4.0/ta-lib-0.4.0-src.tar.gz -o ta-lib-0.4.0-src.tar.gz
tar xzf ta-lib-0.4.0-src.tar.gz
cd ta-lib
./configure prefix=/usr
make
make install
pip install TA-lib
