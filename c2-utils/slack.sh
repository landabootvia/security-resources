#!/bin/bash

## Disclaimer: This is just a dummy way to verify for new grunts on Covenant and alert on Slack
## It can be a good idea to serve this script as a service or to check if it's running at the crontab
## Place this script at the Covenant/Data path, you should use slacktee in order for this to work



while true;do

strings covenant.db | grep -i "has been activated" > new.txt

verifica=$(diff things.txt new.txt | wc -l)


if [ $verifica -gt 1 ];then

	diff things.txt new.txt | grep ">" | sed 's,>,,g' | slacktee
	mv new.txt things.txt

else

	echo "No new grunts :("


fi

sleep 5


done;
