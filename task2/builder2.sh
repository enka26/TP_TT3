#!/bin/bash

sudo apt-get install libboost-system-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install zlib1g-dev
sudo apt-get install gsasl*
sudo apt-get install libgsasl*
sudo apt-get install libghc-gsasl*
sudo apt-get install doxygen
sudo apt-get install gnutls
sudo apt-get install sendmail


git clone https://github.com/akhtyamovpavel/PatternsCollection.git
cd ./PatternsCollection

cp ../config.ini Decorator/cpp-source/configs/config.ini



rm CMakeLists.txt
cp ../CMakeLists.txt CMakeLists.txt



mkdir build
cd ./build

cmake ..


make


cd ../bin
./Decorator

