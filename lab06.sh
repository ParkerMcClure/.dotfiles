#!/bin/bash

wget https://raw.githubusercontent.com/s7117/csce215labs/main/mnist_condensed.csv
head mnist_condensed.csv
head mnist_condensed.csv | tail -3 >> lab06.out
wc -l < lab06.out
sed -n '23p' mnist_condensed.csv > lab06.out
cat lab06.out | wc -l
head mnist_condensed.csv | tail -3 >> lab06.out
sed -n '23p' mnist_condensed.csv >> lab06.out
wc -l < lab06.out
mkdir dir{A..Z}
touch dir{A..Z}/file{01..10}.txt
mkdir dir123 dir
mkdir OLD
mv dir* mnist_condensed.csv OLD
rm -r OLD
