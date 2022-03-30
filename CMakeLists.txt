cmake_minimum_required(VERSION 3.14)
project(PyScienceMode2 VERSION 0.0.1)
set (CMAKE_CXX_STANDARD 11)

set (SOURCE_LIB_SCM2 "${CMAKE_CURRENT_SOURCE_DIR}/lib")
set(Python3_EXECUTABLE ${PYTHON_EXECUTABLE})

find_package(PythonInterp REQUIRED)
find_package(Python3 REQUIRED COMPONENTS Interpreter Development NumPy)
find_package (SWIG REQUIRED)

include_directories("${Python3_INCLUDE_DIRS}")
include_directories("${Python3_NumPy_INCLUDE_DIRS}")

# Create and link the .i file
configure_file("${CMAKE_CURRENT_SOURCE_DIR}/${PROJECT_NAME}_linux.i.in"
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}_linux.i" @ONLY)
set(I_SOURCE_FILE "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}_linux.i")
set_property(SOURCE "${I_SOURCE_FILE}"
   PROPERTY CPLUSPLUS ON
)

include (UseSWIG)
SWIG_ADD_LIBRARY(_${PROJECT_NAME}
    TYPE SHARED
    LANGUAGE "python"
    SOURCES "${I_SOURCE_FILE}"
)

swig_link_libraries(_${PROJECT_NAME}
    "${SOURCE_LIB_SCM2}/libScienceMode2.so"
    "${Python3_LIBRARIES}"
)
target_include_directories(_${PROJECT_NAME} PRIVATE
    "${SOURCE_LIB_SCM2}"
    "${Python3_INCLUDE_DIRS}"
    "${Python3_NumPy_INCLUDE_DIRS}"
)
set_target_properties(_${PROJECT_NAME} PROPERTIES
    PREFIX ""
    INSTALL_RPATH "${SOURCE_LIB_SCM2}/"
    INSTALL_RPATH_USE_LINK_PATH TRUE
)

# Install to the library to proper directories
INSTALL(FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}.py"
    DESTINATION "${Python3_SITELIB}/${PROJECT_NAME}/"
    RENAME "__init__.py"
)
INSTALL(TARGETS _${PROJECT_NAME}
    DESTINATION "${Python3_SITELIB}/${PROJECT_NAME}"
)
