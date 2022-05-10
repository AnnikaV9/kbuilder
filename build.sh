#!/bin/bash
#
# Package the kbuilder sources for makepkg
#

PKGNAME="kbuilder"
PKGVER="0.3.0"

pandoc doc/$PKGNAME.1.md -s -t man -o doc/$PKGNAME.1 && 
gzip -v -9 doc/$PKGNAME.1 &&
mkdir -v -p tmp/$PKGNAME-$PKGVER &&
cp -v kbuilder tmp/$PKGNAME-$PKGVER/ &&
cp -v LICENSE tmp/$PKGNAME-$PKGVER/ &&
cp -v doc/documentation.html tmp/$PKGNAME-$PKGVER/ &&
cp -v doc/$PKGNAME.1.gz tmp/$PKGNAME-$PKGVER/ &&
cd tmp &&
tar czvf $PKGNAME-$PKGVER.tar.gz * &&
mv $PKGNAME-$PKGVER.tar.gz ../ &&
cd .. &&
archive_digest=$(b2sum $PKGNAME-$PKGVER.tar.gz) &&
suffix="  $PKGNAME-$PKGVER.tar.gz" &&
archive_digest_raw=${archive_digest%"$suffix"} &&
sed -i "/source=(/a \b2sums=('$archive_digest_raw')" PKGBUILD
