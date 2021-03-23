# https://01.org/linuxgraphics/documentation/build-guide-0
# Maybe these cflags can be removed with the new compilers
set -ev
CFLAGS="${CFLAGS} -lrt"
CXXFLAGS="${CXXFLAGS} -lrt"

./autogen.sh --prefix=$PREFIX --disable-x11
make -j$(nproc) install
set +ev
