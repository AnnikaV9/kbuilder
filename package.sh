#!/bin/bash
#
# Packages the kbuilder sources for makepkg
#

PKGNAME="kbuilder"
PKGVER="0.2.0"

mkdir -v $PKGNAME-$PKGVER &&
cp -v kbuilder $PKGNAME-$PKGVER/ &&
cp -v LICENSE $PKGNAME-$PKGVER/ &&
tar czvf $PKGNAME-$PKGVER.tar.gz * &&
archive_digest=$(b2sum $PKGNAME-$PKGVER.tar.gz) &&
suffix="  $PKGNAME-$PKGVER.tar.gz" &&
archive_digest_raw=${archive_digest%"$suffix"} &&
sed -i "/source=(/a \b2sums=('$archive_digest_raw')" PKGBUILD
