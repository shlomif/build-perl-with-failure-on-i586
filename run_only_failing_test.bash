#!/bin/bash

# Run only the failing test.

( export LD_LIBRARY_PATH=`pwd`; ( cd t && ./perl harness -v re/pat_rt_report_thr.t) ; )
