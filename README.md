# d-rsync

## Rsync Config File

Docker container running an rsync daemon to listen for rsync requests. 

Docker setup scripts should copy `rsyncd.conf` to `/etc/rsyncd.conf` to get rsync configured using these settings.

The rsync daemon will listen on a port (873 by default). It can listen on any port (localhost only by default). To use via stunnel, it should be bound to localhost only.

## Rsync Docker Image

To build the docker image:

```
./build_docker.sh
```

To run the docker image:

```
./run_docker.sh
```

This binds port 873 in the container to port 873 in the host machine, which is how the stunnel process communicates with the rsync daemon.


