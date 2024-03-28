#!/bin/sh

FILENAME=""
for i in $(seq 1 100)
do
    FILENAME=${NAME}-${i}.pcap
    test -f ${FILENAME} || break
done

echo "tcpdump -s 0 -w ${FILENAME}"
/usr/bin/tcpdump -s 0 -w ${FILENAME}