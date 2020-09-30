#!/bin/bash
cd /var/zap2xml/
rm /mnt/export/xmltv.xml
/var/zap2xml/zap2xml2.pl -u $USER -p  -o /mnt/export/xmltv.xml

