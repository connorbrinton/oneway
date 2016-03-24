#!/usr/bin/env sh

# Get directory in which this package resides
SELF="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Change the following line to update version numbers
SRC="$SELF/src"
DIST="$SELF/dist"
VERSION="0.1"
DEB_SRC="$DIST/oneway-$VERSION"
DEB_ARCHIVE="$DIST/oneway_$VERSION.orig.tar.gz"

# Create the source directory and archive
mkdir "$DEB_SRC"
cp -r "$SRC/*" "$DEB_SRC/"
tar -zcf "$DEB_ARCHIVE" "$DEB_SRC/*"


#debuild -b -us -uc
#echo "Don't forget to sign the produced archives."
