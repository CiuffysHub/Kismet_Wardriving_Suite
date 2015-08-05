#!/bin/bash
if [ $1 == giskismet ] ; then
NETXML="$(ls | grep .netxml | tail -1)" 
giskismet -x $NETXML giskismet -q "select * 
from wireless" -o ex1.kml
cp ex1.kml $2
rm /root/ex1.kml
fi
if [ $1 == captures ] ; then
echo "The latest or currently running capture has found:"
NETTXT="$(ls | grep .nettxt | tail -1)"
cat $NETTXT | grep Network | tail -1 | cut -d' ' -f 2
fi
