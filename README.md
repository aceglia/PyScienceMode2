# PyScienceMode2
Python interface for sciencemode2 used by hasomed rehastim2. Interface was provided using Swig. 

# Installation
## Recompile the librairy
Before compiling modifie the port adress of the rehastim in the ScienceMode2.cpp file line 190 (default is "/dev/ttyUSB0"). No need of compilation if the default port is right. 
run ./generate.sh in a linux console

## Compile the swig package
create build folder
Into the build folder execute the following command :
```
ccmake . ..
```
Add the installation path for the package. 

run the command : 

```
make install -jx
```
with x the number of CPU. 

##Check the installation 
In a linux console : 
```
python
```

```
>>>import PyScienceMode2 as scm2
```
If no error message the package is rightly installed. 

If the rehastim is connected : 

```
>>>device = scm2.ScienceMode2()
>>>device.Open_serial()
>>>device.Close_serial()
```

