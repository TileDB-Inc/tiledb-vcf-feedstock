#!/bin/bash

set -ex

pip install -v --no-deps . \
  --config-settings=cmake.define.TILEDBVCF_ONLY_PYTHON_BINDINGS=ON \
  --config-settings=cmake.define.TILEDBVCF_SET_RPATH=OFF
