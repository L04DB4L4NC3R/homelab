#!/bin/bash

while true; do
	echo "Checking internet speed"
	data=`speedtest --simple`
	dwn=`echo $data | cut -d' ' -f5 | cut -d'.' -f1`
	echo $dwn
	echo $data >> /home/ubuntu/Speed/speed.log
	if [ $dwn -lt 200 ]; then
		echo "MAILING" >> /home/ubuntu/Speed/speed.log
		echo "Slow internet speed detected, sending report"
		printf "To: rakesh.sharma@ndpl.com\nFrom: Angad Sharma\nSubject: Slow Internet Connection Detected\n\n$data\n$(date +'%D')\n" | /usr/bin/msmtp -a angadsharma1016@gmail.com rakesh.sharma@ndpl.com
		echo $? >/dev/null
	fi
	echo $speed
	sleep 2400
done
