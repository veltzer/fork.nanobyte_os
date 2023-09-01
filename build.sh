#!/bin/bash -e
if [ ! -f "deps.stamp" ]
then
	sudo ./scripts/install_deps.sh
	touch "deps.stamp"
fi
if [ ! -f "toolchain.stamp" ]
then
	rm -rf toolchain
	mkdir toolchain
	scons toolchain
	touch "toolchain.stamp"
fi
pip install -r requirements.txt
scons
