#!/bin/sh

VERSION=1.0.7
NAME=viewvc

cd $(dirname $0)

if [ ! -e $NAME-tuleap_$VERSION.orig.tar.gz ]; then
    ln $NAME-$VERSION.tar.gz $NAME-tuleap_$VERSION.orig.tar.gz
fi

rm -rf $NAME-$VERSION
tar xzf $NAME-tuleap_$VERSION.orig.tar.gz
cp -a debian $NAME-$VERSION/

cd $NAME-$VERSION && dpkg-buildpackage -us -uc

