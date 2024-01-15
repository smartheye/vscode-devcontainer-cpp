#!/bin/bash

git clone https://github.com/Microsoft/vcpkg.git ${VCPKG_ROOT}

mkdir -p ${VCPKG_DOWNLOADS}
sh ${VCPKG_ROOT}/../vcpkg/bootstrap-vcpkg.sh
