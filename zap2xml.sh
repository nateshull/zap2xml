#!/bin/bash
cd /var/zap2xml/
rm xmltv.xml
rm ./cache/*
/var/zap2xml/zap2xml2.pl -u $USER -p $PASS -o /mnt/export/xmltv.xml

