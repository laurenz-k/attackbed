#!/bin/bash

WORKDIR="~/tmp"


cd $WORKDIR

sudo apt install build-essential wget

wget https://nmap.org/dist/nmap-7.94.tar.bz2

tar xvfj nmap-7.94.tar.bz2

cd nmap-7.94

export CFLAGS="-march=core2 -O2 -fomit-frame-pointer -pipe -fPIC"
export CXXFLAGS="-march=core2 -O2 -fomit-frame-pointer -pipe -fPIC"
./configure --without-subversion --without-liblua --without-zenmap --with-pcre=/usr --with-libpcap=included --with-libdnet=included --without-ndiff --without-nmap-update --without-ncat --without-liblua --without-nping --without-openssl
make static
