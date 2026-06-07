cd MSYS2/MinGW64
cmake -G "Unix Makefiles" -DTRACY_ON_DEMAND=ON -DCMAKE_INSTALL_LIBDIR=$MINGW_PREFIX/local/lib -DCMAKE_INSTALL_BINDIR=$MINGW_PREFIX/local/bin -DCMAKE_INSTALL_INCLUDEDIR=$MINGW_PREFIX/local/include  ../../../
make
make install/local
cd ../..
