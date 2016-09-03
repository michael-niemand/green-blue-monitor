# this script basically just copies the green or blue website to /index.htm so it gets displayed by the webserver
LIVE=$('ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa root@your.host.com "ls / | grep -E \'green|blue\'"')

if [ "$LIVE" = "blue" ]
then
	cp /var/www/html/whatslive/blue /var/www/html/whatslive/index.htm
elif [ "$LIVE" = "green" ]
then
	cp /var/www/html/whatslive/green /var/www/html/whatslive/index.htm
else
	exit 1;
fi
