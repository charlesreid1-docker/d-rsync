#!/bin/bash
# 
# Build the docker container using the Dockerfile
# 
# https://charlesreid1.com/wiki/Docker/Dockerfiles

export CONF="rsyncd.conf"

if [ -f $CONF ]; then
	docker build -t cmr_rsync .
else
	echo "Missing config file:"
	echo "rsyncd.conf"
	echo ""
	echo "Add ${CONF} to this directory so it can be copied to /etc/${CONF}"
fi
