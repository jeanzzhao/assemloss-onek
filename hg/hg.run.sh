#! /bin/bash
/usr/bin/time -v sourmash scripts manysearch all-host.mf.csv ../list/zyzhao-sigpaths-oct4.txt \
-o 3k.csv -c 4 -t 0 –scale=10_000 > 3k.time.out
