#!/usr/bin/env bash

# here goes your environment toggle code, like changing the config of your load balancer or what have you
# ...

# just add this line at the end - it creates an empty file named like the new environment in /
# this file can be read easily with a shell script
rm -f /green; touch /blue
