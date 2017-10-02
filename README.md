# d-rsync

## Rsync Config File

Docker container running an rsync daemon to listen for rsync requests. 

Docker setup scripts should copy `rsyncd.conf` to `/etc/rsyncd.conf` to get rsync configured using these settings.

The rsync daemon will listen on a port (873 by default). It can listen on any port (localhost only by default). To use via stunnel, it should be bound to localhost only.

## Rsync Docker Image

To build the docker image:

```
./build_rsync.sh
```

To run the docker image:

```
./run_rsync.sh
```

This binds port 873 in the container to port 873 in the host machine, 
which is how the stunnel process communicates with the rsync daemon.

## Building the Docker Container

The `build_rsync.sh` script will do the following:
* Check if the rsync config file `rsync.conf` exists
* Build the Docker container using the Dockerfile

## Running the Docker Container

To run the Docker container, use the Makefile.
This will build the rsync Docker container,
run the Docker container, and (optionally) 
ask you to open the firewall of the machine
running the Docker container to expose the 
container's service to the outside world.

The `run_rsync.sh` script will do the following:
* Mount /wifi in the host machine to /wifi in the container
* Map port X on the host machine to port X in the container (X is specified as the first command line argument)

## Container Actions

The Dockerfile will do the following:
* Copy the rsync config file `rsync.conf` to `/etc/rsyncd.conf`
* Copy the startup script `start_rsync_container.sh` to `/start_rsync_container.sh`
* Install `rsync`
* Start `rsync`

