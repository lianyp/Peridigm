#!/bin/bash

PERIDIGM_ROOT=/usr/local/Peridigm
MPI_HOME=/usr/local/
#VTK_LIB_DIR=/usr/local/vtk/vtk-5.8

rm -f CMakeCache.txt
 
# invoke cmake
cmake \
    -D CMAKE_BUILD_TYPE:STRING=Debug \
    -D CMAKE_INSTALL_PREFIX:PATH=$PERIDIGM_ROOT \
    -D TRILINOS_DIR:PATH=/usr/local/trilinos \
    -D CMAKE_C_COMPILER:STRING=mpicc \
    -D CMAKE_CXX_COMPILER:STRING=mpicxx \
    -D BOOST_ROOT=/usr/local/boost \
    -D USE_DAKOTA:BOOL=OFF \
    -D Blas_LIBRARY:FILE=/usr/lib/libblas.so.3gf \
    -D Lapack_LIBRARY:FILE=/usr/lib/liblapack.so.3gf \
    ..

