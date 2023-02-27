#!/bin/bash
VERSION="$1"
if [ "$VERSION" = "" ]; then
  echo "No version."
  exit 1
fi
echo Building version v$VERSION
rm -r build 2>/dev/null
mkdir build
sed -i "s|Version: .*|Version: $1|g" DEBIAN/control
cp -r {etc,DEBIAN,usr} build
dpkg-deb --build --root-owner-group ./build gnome-indicator-symogen24-v$1.deb
rm -r build
