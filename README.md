# autorecon-docker

A simple effort to docker-ize AutoRecon by Tib3rious. Future development efforts will focus on the minimalization of layer size.

AutoRecon Repository: https://github.com/Tib3rius/AutoRecon

Docker Hub Link: https://hub.docker.com/r/darkstar7471/autorecon

## Installation

```docker pull darkstar7471/autorecon```



## Utilization

Run with the command: 

```docker run --rm -t darkstar7471/autorecon```



Recommended usage with a target file and output directory specified:

```docker run --rm -t -v /directory/to/include:/mnt/output darkstar7471/autorecon -t /mnt/output/targets.txt -o /mnt/output```