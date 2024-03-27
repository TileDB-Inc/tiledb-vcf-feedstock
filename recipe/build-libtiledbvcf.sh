#!/bin/sh

set -exo pipefail

mkdir libtiledbvcf-build && cd libtiledbvcf-build

# wrap CXX compiler to remove problematic args
export NN_CXX_ORIG=$CXX
export CXX="${RECIPE_DIR}/cxx_wrap.sh"

cmake \
  -DCMAKE_INSTALL_PREFIX:PATH="${PREFIX}" \
  -DOVERRIDE_INSTALL_PREFIX=OFF \
  -DCMAKE_BUILD_TYPE=Release \
  -DFORCE_EXTERNAL_HTSLIB=OFF \
  ../libtiledbvcf

make -j ${CPU_COUNT}

make install-libtiledbvcf

# Cleanup
cd ../ && rm -r libtiledbvcf-build
