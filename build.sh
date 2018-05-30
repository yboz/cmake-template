#!/bin/bash

SOURCE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $SOURCE && mkdir build; pushd build && cmake ../ && make;popd;popd
