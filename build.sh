#!/bin/bash

SOURCE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $SOURCE && mkdir cmake-build-debug; pushd cmake-build-debug && cmake ../ && make;popd;popd
