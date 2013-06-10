#!/bin/bash
base_dir="$(perl -MFile::Spec -e 'print File::Spec->rel2abs(shift)' "$(dirname "$0")")"
rm -fr perl-5.18.0
tar -xvf ~/Download/Arcs/perl-5.18.0.tar.bz2
(
    cd perl-5.18.0 && \
    bash "$base_dir"/build-perl-with-failure.bash && \
    make && \
    make install && \
    ~/apps/perl/mageia-perl-5.18.0-bug/bin/cpan 'Module::Build::Tiny'
)
