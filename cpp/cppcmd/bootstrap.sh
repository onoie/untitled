#!/bin/bash

ACLOCAL=${ACLOCAL:-aclocal}
AUTOMAKE=${AUTOMAKE:-automake}
AUTOCONF=${AUTOCONF:-autoconf}

#mkdir -p m4
#ACLOCAL_FLAGS=-Im4

autoscan
autoheader

echo "Running $ACLOCAL..."
$ACLOCAL || exit 1
#$ACLOCAL $ACLOCAL_FLAGS || exit 1

echo "Running $AUTOMAKE..."
$AUTOMAKE --add-missing --copy || exit 1
#$AUTOMAKE -a -c --gnu --add-missing  || exit 1

echo "Running $AUTOCONF..."
$AUTOCONF || exit 1

