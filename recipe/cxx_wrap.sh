#!/bin/sh

args="${@##-Wl,--allow-shlib-undefined}"
$NN_CXX_ORIG $args
