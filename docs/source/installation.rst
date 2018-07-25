Installation
============
The program is most easily installed with CMake. Instructions for both OSX and Ubuntu can be found below

OSX:
----
This requires CMake to be installed on your machine, install CMake by running

``brew install cmake``

or using macports

``ports install cmake``

Then run the following command to install MO-MD

``cmake install``

Ubuntu:
-------
Install CMake:

```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:george-edison55/cmake-3.x
sudo apt-get update
sudo apt-get install cmake
```

then run:

``cmake install``