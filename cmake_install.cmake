# Install script for directory: /home/amedeo/Documents/programmation/PyScienceMode2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/amedeo/miniconda3/envs/casadi")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2/__init__.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2" TYPE FILE RENAME "__init__.py" FILES "/home/amedeo/Documents/programmation/PyScienceMode2/PyScienceMode2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2/_PyScienceMode2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2/_PyScienceMode2.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2/_PyScienceMode2.so"
         RPATH "/home/amedeo/Documents/programmation/PyScienceMode2/lib/:/home/amedeo/miniconda3/envs/casadi/lib")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2/_PyScienceMode2.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2" TYPE SHARED_LIBRARY FILES "/home/amedeo/Documents/programmation/PyScienceMode2/_PyScienceMode2.so")
  if(EXISTS "$ENV{DESTDIR}/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2/_PyScienceMode2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2/_PyScienceMode2.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2/_PyScienceMode2.so"
         OLD_RPATH "/home/amedeo/Documents/programmation/PyScienceMode2/lib:/home/amedeo/miniconda3/envs/casadi/lib:"
         NEW_RPATH "/home/amedeo/Documents/programmation/PyScienceMode2/lib/:/home/amedeo/miniconda3/envs/casadi/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/amedeo/miniconda3/envs/casadi/lib/python3.9/site-packages/PyScienceMode2/_PyScienceMode2.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/amedeo/Documents/programmation/PyScienceMode2/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
