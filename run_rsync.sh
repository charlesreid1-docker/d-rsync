#!/bin/bash
# 
# Run the rsync docker container
# 
# Input traffic only, via specified port.
# Mount volume being synced, too: /wifi
# 
# http://charlesreid1.com/wiki/Docker/Basics


function usage {
	echo ""
	echo "run_rsync.sh script:"
	echo "run the rsync stunnel docker container."
	echo "specify a port number for rsync stunnel to open:"
	echo ""
	echo "        ./run_rsync.sh 666"
	echo ""
}

# If user has not provided a port number,
# or if it isn't between 1 and 5 digits,
# raise an error.
if [[ "$#" -ne 1 || $1 =~ "[0-9]\{1,5\}" ]];
then
	usage
else

	docker run \
		--network=host \
		-p ${1}:${1} \
		-v /wifi:/wifi \
		-d \
		-ti cmr_rsync \

fi
