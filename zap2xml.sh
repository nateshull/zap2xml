#!/bin/bash
#20241026 add time argument, loop and conditions to run at time
#loop (mins)
looptime=10
#sleep
sleeptime=599
while :
do
  currtime=$(date +%H%M)
  uppertime=$(date -d "$looptime minutes" +%H%M )
  if (($currtime <= $TIME)) 
  then
    if (($uppertime >= $TIME))
    then
      cd /var/zap2xml/
      rm /mnt/export/xmltv.xml
      /var/zap2xml/zap2xml2.pl -u $USER -p $PASS  -o /mnt/export/xmltv.xml
    fi
  fi
  sleep $sleeptime
done
