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
  -Dinc_version_list="5.18.0 5.16.3 5.16.3 5.16.2 5.16.2 5.16.1 5.16.1 5.16.0 5.16.0 5.14.2 5.14.1 5.14.0" \
  -Dcc='/usr/bin/gcc' \
  -Doptimize='-O2' -DDEBUGGING=-g \
-Dmyhostname=localhost -Dperladmin=root@localhost \
 -Dcf_email=root@localhost  \
  -Dperllibs='-lnsl -ldl -lm -lcrypt -lutil -lc -pthread'   \
  -Ud_csh \
  -Duseshrplib \
  -Duseithreads \
  -Di_db \
  -Di_ndbm \
  -Di_gdbm \


