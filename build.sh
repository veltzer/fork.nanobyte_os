#!/bin/bash -e
rm -rf toolchain
mkdir toolchain
sudo ./scripts/install_deps.sh
scons toolchain
