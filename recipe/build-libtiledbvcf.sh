#!/bin/sh

set -exo pipefail

mkdir libtiledbvcf-build && cd libtiledbvcf-build

# wrap CXX compiler to remove problematic args
export NN_CXX_ORIG=$CXX
export CXX="${RECIPE_DIR}/cxx_wrap.sh"

cmake -S libtiledbvcf -B build \
  -D CMAKE_BUILD_TYPE=Release \
  -D BUILD_SHARED_LIBS=ON \
  -D TILEDBVCF_ENABLE_TESTS=OFF \
  -D TILEDBVCF_FORCE_EXTERNAL_DEPENDENCIES=ON \
  -D TILEDBVCF_INSTALL_TILEDB=OFF \
  -D CMAKE_PREFIX_PATH=$CONDA_PREFIX

cmake --build build --config Release

cmake --install build --config Release

# Cleanup
cd ../ && rm -r libtiledbvcf-build
