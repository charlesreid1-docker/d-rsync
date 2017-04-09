#!/bin/bash
#
#################################
# do not call this script directly.
# use the Makefile.
#################################
# 
# Build the rsync docker container using the Dockerfile
# 
# https://charlesreid1.com/wiki/Docker/Dockerfiles

SED="/bin/sed"

function usage {
	echo ""
	echo "build_rsync.sh script:"
	echo "builds an rsync docker container."
	echo ""
	echo "        ./build_rsync.sh"
	echo ""
}

if [[ "$#" -ne 0 ]];
then
	usage
else

	export CONF="rsyncd.conf"

	if [ -f $CONF ]; then
		docker build -t cmr_rsync .
	else
		echo "Missing config file:"
		echo "rsyncd.conf"
		echo ""
		echo "Add ${CONF} to this directory so it can be copied to /etc/${CONF}"
	fi

fi
