set -xe

pwd
which nvc
which fstdump

nvc -a $TESTDIR/regress/wave4.vhd -e wave4 -r -w --dump-arrays

fstdump wave4.fst > wave4.dump
diff -u $TESTDIR/regress/gold/wave4.dump wave4.dump
