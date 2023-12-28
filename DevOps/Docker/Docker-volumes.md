Docker Volumes
---------------

* By default, Containers are _ephimeral_ in nature i.e., they are shortlived
* They are very light weighed and do not have a complete operating system and filesystem


### Docker Bind Mounts

* It allows you to bind a specific directory or filesystem inside the container to a specific directory on the host
* Even if the running container goes down, the new container can again be binded to the existing directory on the host and this way the data is not lost


### Docker Volumes

* Volumes are like the `logical partitions` that can be created on the host
* Similar to bind mounts Volumes also solves the same problem, but volumes offer better life cycle
* We create volumes using `Docker CLI` and mount them to the containers
* Volumes are easy to share from one container to another container
* One of the huge advantages with volumes is that, volumes can be created anywhere on any _external source_ (same/different host, ec2 instances, AWS S3, nfs etc...) and can be mounted to containers
* This advantage is more useful when the container requires more disk space and the host does not have enough space, volumes can be created on another host (with more disk space) and can be mounted to this container
* By creating volumes on external sources, `back-ups` can be done easily


### Docker Volumes Syntax

[Refer here for official docs](https://docs.docker.com/engine/reference/commandline/volume_create/)

[Refer here for detailed notes](https://github.com/iam-veeramalla/Docker-Zero-to-Hero/blob/main/volumes.md)

```bash
docker volume create hello-vol     # to create a volume
docker volume ls      # to list the volumes
```