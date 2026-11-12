#!/bin/bash

mkdir -p _build/MinGW64
cd _build/MinGW64

cmake -G "MinGW Makefiles" -DTRACY_ON_DEMAND=ON -DCMAKE_INSTALL_PREFIX="$MINGW_PREFIX/local" -DCMAKE_INSTALL_LIBDIR=lib -DCMAKE_INSTALL_BINDIR=bin -DCMAKE_INSTALL_INCLUDEDIR=include  ../..
cmake --build . --config Release
cmake --install . --config Release

cd ../..
