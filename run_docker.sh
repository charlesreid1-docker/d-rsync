#!/bin/bash
# 
# Run the rsync docker container
# 
# Input traffic only, via 873
# Mount volume being synced, too: /wifi
# 
# http://charlesreid1.com/wiki/Docker/Basics

docker run \
	--network=host \
	-p 873:873 \
	-v /wifi:/wifi \
	-ti cmr_stunnel \
	/bin/bash


