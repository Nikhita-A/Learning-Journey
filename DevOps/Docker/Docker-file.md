Dockerfile
----------

* Dockerfile has set of instructions

```
<INSTRUCTION> <VALUE>
```
* Some of the instructions are
    * FROM: initializes a new build stage and sets the `base image`
    * RUN: to run any `shell commands`
    * EXPOSE: exposes the container `port`
    * CMD: it is the `command` executed when container is starting
    * ENTRYPOINT: specify `default executable`
    * LABEL: metadata
    * ADD: ADD can `copy` from local as well remote files(`urls` etc..) into docker image
    * COPY: COPY can `copy files or folders` from local system only
    * VOLUME: While creating images we can use this VOLUME instruction to `automatically preserve data` even if the user doesnot explicitly creates volumes.
    * WORKDIR: `Default directory` when container starts
    * USER: sets the username to use as `default user`
    * ARG: to `parameterize` Dockerfile while building the image 
    * ENV: to set `environmental variables` while running the container

[Refer here for detailed explanation of Docker Instructions](https://directdevops.blog/2019/09/26/docker-image-creation-and-docker-image-layers/)

### SHELL FORM and EXEC FORM

* Shell form: write the command directly
```bash
ping google.com
```
* EXEC form: write the command in the following formats
```bash
["ping", "google.com"]
```
* Recommendataions
    * RUN: use shell form
    * CMD/ENTRYPOINT: use exec form

### CMD vs ENTRYPOINT

[Refer here for explanation](https://directdevops.blog/2024/01/09/devops-classroom-notes-09-jan-2024/)