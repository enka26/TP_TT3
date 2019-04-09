#!/bin/bash

git clone https://github.com/akhtyamovpavel/PatternsCollection.git

cd ./PatternsCollection


rm CMakeLists.txt
cp ../CMakeLists.txt CMakeLists.txt

mkdir build
cd ./build

cmake .. -DON_PI=ON -DSYSROOT=$(pwd)/tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/arm-linux-gnueabihf/sysroot/

make

cd ../..

zip -q -r patternsProject.zip PatternsCollection

