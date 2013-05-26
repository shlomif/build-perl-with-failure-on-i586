#!/bin/bash

# This script reproduces a failure at the "make test" stage with perl-5.18.0
# on i586 Mageia Linux 3 (and Mageia Linux Cauldron).
#
# To reproduce do:
# tar -xvf perl-5.18.0.tar.bz2.
# cd perl-5.18.0.
# bash ~/build-perl-on-i586-with-failure/build-perl-with-failure.bash
# make
# make test

# Based on the Mageia's perl-5.18.0-1's .src.rpm's .spec.

sh Configure -des \
  -Duseithreads \


