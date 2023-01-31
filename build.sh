#!/bin/bash
rm -r build 2>/dev/null
mkdir build
cp -r {etc,DEBIAN,usr} build
dpkg-deb --build --root-owner-group ./build nice.deb
rm -r build
