#!/bin/bash
autoscan
autoheader
aclocal
automake --add-missing --copy
autoconf
